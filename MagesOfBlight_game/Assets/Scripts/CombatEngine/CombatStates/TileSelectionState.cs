using UnityEngine;
using System.Collections;

public class TileSelectionState : BaseCombatState {

    public override void InitState() {
        base.InitState();

    }

    public override void UpdateState() {
        //base.UpdateState();

        HandleSelection();
        
    }

    public override void EndState() {
        base.EndState();

    }


//TODO: let take a lambda expression and inject different functionality depending on if it passes or not
    private void HandleSelection() {

        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Select) != 0.0f) {
            TileInfo hitTile;

            if (battleManRef.TileRaycast(battleManRef.battleCam.ScreenToWorldPoint(Input.mousePosition),//***CHANGE TO USING INPUT AXIS FROM INPUT HANDLER***
                                         battleManRef.battleCamTf.rotation * Vector3.forward,
                                         out hitTile))
            {
                battleManRef.selectedTile = hitTile;

                battleManRef.ChangeCombatState(BattleManager.CombatPhase.ActionSelection);

                //return true;
            }
            //return false;

        }
        //return false;

    }
}
