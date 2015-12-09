using UnityEngine;
using System.Collections;
using System.Linq;

/// <summary>
/// State that handles entering a battle
/// Places all agents on the closest tile
/// </summary>

public class EnterCombatState : BaseCombatState {

    public EnterCombatState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false, bool canHoverGrid = false) : base(thisCombatPhase, canUndo, canHoverGrid) { }
    
    public override void UpdateState() {
        base.UpdateState();

        //***TODO: place all teams on the closest tiles***

        //go through all agents on both teams
        foreach (TileAgent agent in battleManRef.playerTeam.teamMembers.Concat<TileAgent>(battleManRef.enemyTeam.teamMembers)) {
            //find the closest node to put the agent
            HexNode foundNode = JBirdEngine.ListHelper.GetClosestToPosition<HexNode>(HexGridAssembler.singleton.tiles,
                                                                                     agent.transform.position);

            //place the agent on the node
            agent.transform.position = foundNode.transform.position;
            foundNode.entityOnTile = agent;
            agent.motor.currentTile = foundNode;

            //initialize the agent's motor
            agent.motor.desiredPoint = agent.transform.position;

            //set the initial color of the node ring
            foundNode.SetNormalMat();
        }


        //battleManRef.ChangeCombatState(BattleManager.CombatPhase.TileSelection);
        battleManRef.ChangeCombatState(BattleManager.CombatPhase.Dialogue,
                                       BattleManager.CombatPhase.TileSelection);

    }


    public override void EndState() {
        base.EndState();
    
    
    }

}
