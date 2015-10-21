using UnityEngine;
using System.Collections;

public class PerformActionState : BaseCombatState {

    public override void InitState() {
        base.InitState();
    }

    public override void UpdateState() {
        base.UpdateState();

        Debug.Log("performing");
    }

    public override void EndState() {
        base.EndState();
    }

}
