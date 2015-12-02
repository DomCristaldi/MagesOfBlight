﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using JBirdEngine;

public class AILogic : BaseCombatState {

    public enum BehaviourProtocol {
        basic,//rush above 50% health, range below 50% health
        rush,//get close and melee
        range,//stay 2 tiles away and use magic
        puppeteer,//behaviour used by the hivemind
    }

    public AILogic(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false, bool canHoverGrid = false) : base(thisCombatPhase, canUndo, canHoverGrid) { }

    public override void InitState () {
        base.InitState();

        if (battleManRef.selectedAgent == null) {
            Debug.LogError("AILogic: Null agent selected!");
            return;
        }
        AITileAgent currentAI = battleManRef.selectedAgent as AITileAgent;
        if (currentAI == null) {
            Debug.LogErrorFormat("AILogic: Enemy {0} does not have AITileAgent script!", battleManRef.selectedAgent);
            return;
        }

        //Determine target
        TileAgent aggroTarget = currentAI.aggroTarget;
        if (aggroTarget == null) {
            if (currentAI.lastTarget != null) {
                aggroTarget = currentAI.lastTarget;
            }
            else {
                aggroTarget = JBirdEngine.ListHelper.GetClosestToPosition<TileAgent>(battleManRef.playerTeam.teamMembers, currentAI.transform.position);
            }
        }
        if (aggroTarget == null) {
            Debug.LogError("AILogic: Closest player could not be found!");
        }
        currentAI.lastTarget = aggroTarget;
        HexNode targetTile = aggroTarget.motor.currentTile;
        HexNode currentTile = currentAI.motor.currentTile;

        //BEHAVIOUR STUFF (maybe change to Strategy pattern later)

        //Determine behaviour protocol
        BehaviourProtocol currentProtocol = currentAI.behaviourProtocol;
        if (currentProtocol == BehaviourProtocol.basic) {
            if (currentAI.stats.currentHealth >= currentAI.stats.maxHealth / 2f) {
                currentProtocol = BehaviourProtocol.rush;
            }
            else {
                currentProtocol = BehaviourProtocol.range;
            }
        }

        //RUSH
        if (currentProtocol == BehaviourProtocol.rush) {

            //Try to move closer to target first
            if (currentAI.moveSteps > 0) {
                if (!currentTile.connections.Contains(targetTile)) {
                    foreach (AgentActions.ActionData actionData in currentAI.agentActions.proactiveActions) {
                        if (actionData.action as MoveAction != null) {
                            battleManRef.selectedAction = actionData.action;
                            break;
                        }
                    }
                    if (battleManRef.selectedAction == null) {
                        Debug.LogError("AILogic: Enemy {0} has no move action!");
                        currentAI.moveSteps = 0;
                    }
                    else {
                        battleManRef.targetTile = ListHelper.GetClosestToPosition<HexNode>(targetTile.connections, currentAI.transform.position);
                        battleManRef.ChangeCombatState(BattleManager.CombatPhase.PerformAction);
                        return;
                    }
                }
            }

            //Do melee if within range
            if (currentTile.connections.Contains(targetTile)) {
                foreach (AgentActions.ActionData actionData in currentAI.agentActions.proactiveActions) {
                    if (actionData.action as BasicMeleeAction != null) {
                        battleManRef.selectedAction = actionData.action;
                        battleManRef.targetTile = targetTile;
                        battleManRef.ChangeCombatState(BattleManager.CombatPhase.PerformAction);
                        currentAI.lastTarget = null;
                        return;
                    }
                }
            }

            //Compile a list of possible actions
            List<BaseAction> potentialActions = new List<BaseAction>();
            foreach (AgentActions.ActionData actionData in currentAI.agentActions.proactiveActions) {
                if (actionData == null || actionData.action == null) {
                    Debug.LogErrorFormat("AILogic: Enemy {0} has a null action!");
                    continue;
                }
                if (actionData.action as MoveAction != null) {
                    continue;
                }
                if (actionData.action as DoNothingAction != null) {
                    continue;
                }
                if (actionData.action as BasicMeleeAction != null) {
                    continue;
                }
                if (actionData.action.CheckTiles().Contains(targetTile)) {
                    potentialActions.Add(actionData.action);
                }
            }

            //Select the action with the highest damage
            float highestDamage = 0f;
            BaseAction bestAction = battleManRef.defaultAction;
            foreach (BaseAction action in potentialActions) {
                if (action.damage > highestDamage) {
                    highestDamage = action.damage;
                    bestAction = action;
                }
            }
            battleManRef.selectedAction = bestAction;
            battleManRef.targetTile = targetTile;
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.PerformAction);
            currentAI.lastTarget = null;
            return;
        }

        //RANGE
        else if (currentProtocol == BehaviourProtocol.range) {

            //Try to move 2 tiles away in a straight line from the target
            if (currentAI.moveSteps > 0 && !currentAI.hasMoved) {
                currentAI.hasMoved = true;
                foreach (AgentActions.ActionData actionData in currentAI.agentActions.proactiveActions) {
                    if (actionData.action as MoveAction != null) {
                        battleManRef.selectedAction = actionData.action;
                        break;
                    }
                }
                if (battleManRef.selectedAction == null) {
                    Debug.LogError("AILogic: Enemy {0} has no move action!");
                    currentAI.moveSteps = 0;
                }
                else {
                    Vector3 desiredPosition = HexGrid.SnapToHexDirection(currentAI.transform.position - aggroTarget.transform.position).normalized * HexGridAssembler.singleton.tileRadius * 4f + aggroTarget.transform.position;
                    Debug.DrawLine(aggroTarget.transform.position + Vector3.up, desiredPosition + Vector3.up, MoreColors.BobRoss.phthaloBlue, 100f);
                    battleManRef.targetTile = ListHelper.GetClosestToPosition<HexNode>(HexGridAssembler.singleton.tiles, desiredPosition);
                    if (battleManRef.targetTile.entityOnTile != null) {
                        battleManRef.targetTile = currentTile;
                    }
                    battleManRef.ChangeCombatState(BattleManager.CombatPhase.PerformAction);
                    return;
                }
            }

            //Compile a list of possible actions
            List<BaseAction> potentialActions = new List<BaseAction>();
            foreach (AgentActions.ActionData actionData in currentAI.agentActions.proactiveActions) {
                if (actionData == null || actionData.action == null) {
                    Debug.LogErrorFormat("AILogic: Enemy {0} has a null action!");
                    continue;
                }
                if (actionData.action as MoveAction != null) {
                    continue;
                }
                if (actionData.action as DoNothingAction != null) {
                    continue;
                }
                if (actionData.action as BasicMeleeAction != null) {
                    continue;
                }
                if (actionData.action.CheckTiles().Contains(targetTile)) {
                    potentialActions.Add(actionData.action);
                }
            }

            //Select the action with the highest damage
            float highestDamage = 0f;
            BaseAction bestAction = battleManRef.defaultAction;
            foreach (BaseAction action in potentialActions) {
                if (action.damage > highestDamage) {
                    highestDamage = action.damage;
                    bestAction = action;
                }
            }
            battleManRef.selectedAction = bestAction;
            battleManRef.targetTile = targetTile;
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.PerformAction);
            currentAI.lastTarget = null;
            return;
        }

    }

}