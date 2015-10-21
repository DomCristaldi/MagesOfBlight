using UnityEngine;
using System.Collections;

public class TileSelectionState : BaseCombatState {


    public override void UpdateState() {
        //base.UpdateState();

        HandleSelection();
        
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

                //MOVE TO ACTION SELECTION STATE IF WE'VE SELECTED AN AGENT
                if (battleManRef.selectedTile.entityOnTile as TileAgent != null) {
                    battleManRef.selectedAgent = battleManRef.selectedTile.entityOnTile as TileAgent;

                    battleManRef.ChangeCombatState(BattleManager.CombatPhase.ActionSelection);

                }

                //return true;
            }
            //return false;

        }
        //return false;

    }
}
