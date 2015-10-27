using UnityEngine;
using System.Collections;

public class CheckTeamState : BaseCombatState {

    public CheckTeamState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false) : base(thisCombatPhase, canUndo) { }

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
        }

        //***TODO: add in switching to AI where necessary***

        battleManRef.ChangeCombatState(BattleManager.CombatPhase.TileSelection);
        
        
    }

}
