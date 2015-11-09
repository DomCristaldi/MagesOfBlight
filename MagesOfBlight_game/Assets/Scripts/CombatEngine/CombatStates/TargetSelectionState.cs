using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// State that handles selecting a tile for an Action from ActionSelectionState
/// </summary>

public class TargetSelectionState : BaseCombatState {

    private List<HexNode> acceptableTiles;

    List<HexNode> path;

    public TargetSelectionState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = true) : base(thisCombatPhase, canUndo) { }

    public override void InitState() {
        base.InitState();

        acceptableTiles = battleManRef.selectedAction.CheckTiles();
    }

    public override void UpdateState() {
        base.UpdateState();

        //Debug.Log("Select Target");

        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Select) != 0.0f) {

            HexNode hitTile;

            //raycast from screen-space to the tile and check it against the list of acceptable tiles
            if (battleManRef.TileRaycast(battleManRef.battleCam.ScreenToWorldPoint(Input.mousePosition),
                                         battleManRef.battleCamTf.rotation * Vector3.forward,
                                         out hitTile)
             && acceptableTiles.Contains(hitTile))
            {
                battleManRef.targetTile = hitTile;



                path = JBirdEngine.AIHelper.AStar<HexNode>(battleManRef.selectedTile,
                                                         battleManRef.targetTile,
                                                         mode: JBirdEngine.AIHelper.HeuristicMode.hexagonal);

                //battleManRef.ChangeCombatState(BattleManager.CombatPhase.ConfirmAction);
            }

        }

        if (path != null) {
            Debug.DrawRay(path[0].transform.position, Vector3.up * 5.0f, JBirdEngine.MoreColors.BobRoss.alizarinCrimson());
        }

        battleManRef.DrawPath(path, Color.red);

        if (path != null
         && path.Count != 1
         && InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Confirm) != 0.0f) {

            battleManRef.ChangeCombatState(BattleManager.CombatPhase.PerformAction);
        }


    }

}
