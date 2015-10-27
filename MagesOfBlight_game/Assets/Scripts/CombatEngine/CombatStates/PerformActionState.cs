using UnityEngine;
using System.Collections;

public class PerformActionState : BaseCombatState {

    public PerformActionState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false) : base(thisCombatPhase, canUndo) { }

    public override void UpdateState() {
        base.UpdateState();

        if (battleManRef.selectedAction.DoAction()) {//returns true when finished
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.CheckTeam);
        }
    }

    public override void EndState() {
        base.EndState();

        battleManRef.selectedAgent.UseTurn();

        battleManRef.ClearFrameInfo();
    }

}
