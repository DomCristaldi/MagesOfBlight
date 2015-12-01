using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AILogic : BaseCombatState {

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
            aggroTarget = JBirdEngine.ListHelper.GetClosestToPosition<TileAgent>(battleManRef.playerTeam.teamMembers, currentAI.transform.position);
        }
        if (aggroTarget == null) {
            Debug.LogError("AILogic: Closest player could not be found!");
        }

        HexNode targetTile = aggroTarget.motor.currentTile;
        HexNode currentTile = currentAI.motor.currentTile;

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
                    battleManRef.targetTile = JBirdEngine.ListHelper.GetClosestToPosition<HexNode>(targetTile.connections, currentAI.transform.position);
                    battleManRef.ChangeCombatState(BattleManager.CombatPhase.PerformAction);
                }
            }
        }

        //Pick the best attack or end the turn if none are available
        List<BaseAction> potentialActions = new List<BaseAction>();
        foreach (AgentActions.ActionData actionData in currentAI.agentActions.proactiveActions) {
            if (actionData.action as MoveAction != null || actionData.action as DoNothingAction != null) {
                continue;
            }

        }

    }

}
