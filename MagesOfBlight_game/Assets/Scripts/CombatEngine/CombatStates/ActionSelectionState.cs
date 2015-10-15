using UnityEngine;
using System.Collections;

public class ActionSelectionState : BaseCombatState {

    public override void UpdateState() {
        base.UpdateState();

        Debug.Log("Select action");

        battleManRef.ChangeCombatState(BattleManager.CombatPhase.TargetSelection);
    }

}
