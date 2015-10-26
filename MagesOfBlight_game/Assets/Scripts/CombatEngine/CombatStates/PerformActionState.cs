using UnityEngine;
using System.Collections;

public class PerformActionState : BaseCombatState {


    public override void UpdateState() {
        base.UpdateState();

        Debug.Log("performing");

        if (battleManRef.selectedAction.DoAction()) {//returns true when finished
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.TileSelection);
        }
    }

    public override void EndState() {
        base.EndState();

        battleManRef.ClearFrameInfo();
    }

}
