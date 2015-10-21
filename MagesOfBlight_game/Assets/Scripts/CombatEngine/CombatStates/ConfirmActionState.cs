using UnityEngine;
using System.Collections.Generic;

public class ConfirmActionState : BaseCombatState {

    public override void UpdateState() {
        base.UpdateState();

        Debug.Log("confirm?");

        List<HexNode> path = JBirdEngine.AIHelper.AStar<HexNode>(battleManRef.selectedTile,
                                                                 battleManRef.targetTile,
                                                                 mode: JBirdEngine.AIHelper.HeuristicMode.hexagonal);

        battleManRef.DrawPath(path, Color.red);

        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Confirm) != 0.0f) {
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.PerformAction);
        }

    }

}
