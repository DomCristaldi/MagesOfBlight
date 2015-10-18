using UnityEngine;
using System.Collections;

[System.Serializable]
public class BaseCombatState {

    protected BattleManager battleManRef;

    public virtual void InitState() {
        battleManRef = BattleManager.singleton;
    }

    public virtual void UpdateState() {

    }

    public virtual void EndState() {

    }
}
