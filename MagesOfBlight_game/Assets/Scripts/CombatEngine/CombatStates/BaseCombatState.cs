using UnityEngine;
using System.Collections;

[System.Serializable]
public class BaseCombatState {

    protected BattleManager battleManRef;
    protected delegate void ConfirmationFunc();

    protected Coroutine ConfirmationChecker;

    protected BattleManager.CombatPhase prevPhase;

    public virtual void InitState(BattleManager.CombatPhase cameFromPhase, bool logPrev = true) {



        battleManRef = BattleManager.singleton;

        if (logPrev) { 
            battleManRef.PushPreviousCombatPhase(cameFromPhase);
        }

        //prevPhase = cameFromPhase;
        //Debug.Log(cameFromPhase);
    }

    public virtual void UpdateState() {
        HandleCancelState();
    }

    public virtual void EndState() {

    }

    protected virtual void HandleCancelState() {
        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Cancel) != 0.0f) {
            //battleManRef.ChangeCombatState(prevPhase);
            battleManRef.ChangeCombatState(battleManRef.PopPreviousCombatPhase(), false);
        }
    }


    protected virtual void ConfirmationLock(ConfirmationFunc func, BattleManager.CombatPhase succeed, BattleManager.CombatPhase fail) {
        //battleManRef.StartCoroutine()
    }

    protected IEnumerator RunCheckFunction(ConfirmationFunc func) {
        bool decisionMade = false;

        while (decisionMade == false) {

        }

        yield break;
    }
}
