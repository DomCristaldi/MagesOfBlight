using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// State to act as final confirmation lock before finally deciding to perform an action
/// WARNING: Future plans to add Confirmation Lock to the BaseCombatState
///     will make this class obsolete
/// </summary>

public class ConfirmActionState : BaseCombatState {

    public ConfirmActionState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = true) : base(thisCombatPhase, canUndo) { }

    public override void UpdateState() {
        base.UpdateState();

        //Debug.Log("confirm?");

        List<HexNode> path = JBirdEngine.AIHelper.AStar<HexNode>(battleManRef.selectedTile,
                                                                 battleManRef.targetTile,
                                                                 mode: JBirdEngine.AIHelper.HeuristicMode.hexagonal);

        battleManRef.DrawPath(path, Color.red);

        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Confirm) != 0.0f) {
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.PerformAction);
        }

    }

}
