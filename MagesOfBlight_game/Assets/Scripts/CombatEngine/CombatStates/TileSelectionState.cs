using UnityEngine;
using System.Collections;

/// <summary>
/// State handles selecting Tiles on the Hex Grid.
/// Allows selection of any Tile
///     Will only transition to ActionSelectionState if the
///         current Tile has a TileAgent of the currently
///         acting Battle Team
/// </summary>

public class TileSelectionState : BaseCombatState {

    public bool actionMenuOpen;

    public TileSelectionState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = true) : base(thisCombatPhase, canUndo) { }

    /*
    public override void InitState() {
        base.InitState();

        battleManRef.selectedAgent.GetComponent<AgentCanvasSpawner>().agentCanvas.SetActive(false);
        battleManRef.selectedAction = null;

        actionMenuOpen = false;

        SwitchToTileSelection();
    }

    public override void EndState() {
        base.EndState();

        battleManRef.selectedAgent.GetComponent<AgentCanvasSpawner>().agentCanvas.SetActive(false);
        battleManRef.ClearSelectedAction();
    }
    */

    public override void UpdateState() {
        //base.UpdateState();

        if (!actionMenuOpen) {
            HandleTileSelection();
        }
        else {
            HandleActionSelection();
        }
        
    }

    private void SwitchToTileSelection() {
        actionMenuOpen = false;

        battleManRef.selectedAgent.GetComponent<AgentCanvasSpawner>().agentCanvas.SetActive(false);
    }

    private void SwitchToActionSelection() {
        actionMenuOpen = true;

        battleManRef.selectedAgent.GetComponent<AgentCanvasSpawner>().agentCanvas.SetActive(true);
    }


//TODO: let take a lambda expression and inject different functionality depending on if it passes or not
    private void HandleTileSelection() {

        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Select) != 0.0f) {
            HexNode hitTile;

            if (battleManRef.TileRaycast(battleManRef.battleCam.ScreenToWorldPoint(Input.mousePosition),//***CHANGE TO USING INPUT AXIS FROM INPUT HANDLER***
                                         battleManRef.battleCamTf.rotation * Vector3.forward,
                                         out hitTile))
            {

                //DEBUG TO DRAW WHICH TILE WAS SELECTED
                //Debug.DrawRay(hitTile.transform.position, Vector3.up, Color.black, 20.0f);

                battleManRef.selectedTile = hitTile;

                //MOVE TO ACTION SELECTION STATE IF WE'VE SELECTED AN AGENT
                if (battleManRef.selectedTile.entityOnTile as TileAgent != null) {
                    battleManRef.selectedAgent = battleManRef.selectedTile.entityOnTile as TileAgent;

                    //only advance to Action Selection if it's the proper team and capable of performing a turn
                    if (battleManRef.selectedAgent.team == battleManRef.curCombatTeam && battleManRef.selectedAgent.canPerformTurn) {
                        battleManRef.ChangeCombatState(BattleManager.CombatPhase.ActionSelection);
                    }
                }

            }

        }

    }


    private void HandleActionSelection() {
        
    }
}
