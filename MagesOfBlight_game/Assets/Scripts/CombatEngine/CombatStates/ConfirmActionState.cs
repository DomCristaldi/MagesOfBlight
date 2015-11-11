using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// State to act as final confirmation lock before finally deciding to perform an action
/// WARNING: Future plans to add Confirmation Lock to the BaseCombatState
///     will make this class obsolete
/// </summary>

public class ConfirmActionState : BaseCombatState {

    List<HexNode> path;

    public ConfirmActionState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = true, bool canHoverGrid = false) : base(thisCombatPhase, canUndo, canHoverGrid) { }

    public override void InitState() {
        base.InitState();

        path = JBirdEngine.AIHelper.AStar<HexNode>(battleManRef.selectedTile,
                                                   battleManRef.targetTile,
                                             mode: JBirdEngine.AIHelper.HeuristicMode.hexagonal);
    }

    public override void UpdateState() {
        base.UpdateState();

        //Debug.Log("confirm?");



        battleManRef.DrawPath(path, Color.red);

        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Confirm) != 0.0f) {
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.PerformAction);
        }

    }

}
