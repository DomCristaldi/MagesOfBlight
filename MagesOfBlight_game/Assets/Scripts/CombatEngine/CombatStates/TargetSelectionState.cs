using UnityEngine;
using System.Collections;

public class TargetSelectionState : BaseCombatState {

    public override void UpdateState() {
        base.UpdateState();

        Debug.Log("Select Target");

        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Select) != 0.0f) {

            HexNode hitTile;

            if (battleManRef.TileRaycast(battleManRef.battleCam.ScreenToWorldPoint(Input.mousePosition),
                                         battleManRef.battleCamTf.rotation * Vector3.forward,
                                         out hitTile))
            {
                battleManRef.targetTile = hitTile;

                battleManRef.ChangeCombatState(BattleManager.CombatPhase.ConfirmAction);
            }

        }


    }

}
