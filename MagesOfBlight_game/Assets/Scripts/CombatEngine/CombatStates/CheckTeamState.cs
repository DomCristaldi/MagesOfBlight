using UnityEngine;
using System.Collections;

/// <summary>
/// Handles switching the current acting 
/// </summary>

public class CheckTeamState : BaseCombatState {

    public CheckTeamState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false, bool canHoverGrid = false) : base(thisCombatPhase, canUndo, canHoverGrid) { }

    public override void InitState() {
        base.InitState();

        battleManRef.RefreshPrevPhaseStack();

        if (battleManRef.GetCurrentTeam().TurnComplete()) {
            
            //***TODO: come back and make less specific***
            if (battleManRef.curCombatTeam == BattleManager.CombatTeam.Player) {
                battleManRef.playerTeam.RefreshTeam();

                battleManRef.ChangeActingTeam(BattleManager.CombatTeam.Enemy);
            }
            else if (battleManRef.curCombatTeam == BattleManager.CombatTeam.Enemy) {
                battleManRef.enemyTeam.RefreshTeam();

                battleManRef.ChangeActingTeam(BattleManager.CombatTeam.Player);
            }
            else {
                Debug.LogError("WE HAVE A PROBLEM");
            }
        }

        //***TODO: add in switching to AI where necessary***

        battleManRef.ChangeCombatState(BattleManager.CombatPhase.TileSelection);
        
        
    }

}
