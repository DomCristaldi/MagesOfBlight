using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// State that handles selecting a tile for an Action from ActionSelectionState
/// </summary>

public class TargetSelectionState : BaseCombatState {

    private List<HexNode> acceptableTiles;

    public TargetSelectionState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = true) : base(thisCombatPhase, canUndo) { }

    public override void InitState() {
        base.InitState();

        acceptableTiles = battleManRef.selectedAction.CheckTiles();
    }

    public override void UpdateState() {
        base.UpdateState();

        Debug.Log("Select Target");

        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Select) != 0.0f) {

            HexNode hitTile;

            //raycast from screen-space to the tile and check it against the list of acceptable tiles
            if (battleManRef.TileRaycast(battleManRef.battleCam.ScreenToWorldPoint(Input.mousePosition),
                                         battleManRef.battleCamTf.rotation * Vector3.forward,
                                         out hitTile)
             && acceptableTiles.Contains(hitTile)
             )
            {
                battleManRef.targetTile = hitTile;

                battleManRef.ChangeCombatState(BattleManager.CombatPhase.ConfirmAction);
            }

        }


    }

}
