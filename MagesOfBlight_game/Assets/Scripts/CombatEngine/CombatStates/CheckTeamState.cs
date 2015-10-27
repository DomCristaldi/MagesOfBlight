using UnityEngine;
using System.Collections;

public class CheckTeamState : BaseCombatState {

    public CheckTeamState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false) : base(thisCombatPhase, canUndo) { }

    public override void InitState() {
        base.InitState();

        battleManRef.RefreshPrevPhaseStack();

        battleManRef.ChangeCombatState(BattleManager.CombatPhase.TileSelection);
        
    }

}
