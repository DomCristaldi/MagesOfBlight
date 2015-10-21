using UnityEngine;
using System.Collections;

public class EnterCombatState : BaseCombatState {

    public override void InitState() {
        base.InitState();


        
    }

    public override void UpdateState() {
        base.UpdateState();

        //***TODO: place all teams on the closest tiles***

        foreach (TileAgent agent in battleManRef.playerTeam.teamMembers) {
            HexNode foundNode = JBirdEngine.ListHelper.GetClosestToPosition<HexNode>(HexGridAssembler.singleton.tiles,
                                                                                     agent.transform.position);

            agent.transform.position = foundNode.transform.position;
            foundNode.GetComponent<HexNode>().entityOnTile = agent;
        }


        battleManRef.ChangeCombatState(BattleManager.CombatPhase.TileSelection);


    }


    public override void EndState() {
        base.EndState();
    
    
    }

}
