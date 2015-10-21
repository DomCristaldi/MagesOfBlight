using UnityEngine;
using System.Collections.Generic;

public class ConfirmActionState : BaseCombatState {

    public override void UpdateState() {
        base.UpdateState();

        //Debug.Log("confirm?");

        List<HexNode> path = JBirdEngine.AIHelper.AStar<HexNode>(battleManRef.selectedTile.node,
                                                                 battleManRef.targetTile.node,
                                                                 mode: JBirdEngine.AIHelper.HeuristicMode.hexagonal);

        battleManRef.DrawPath(path, Color.red);

    }

}
