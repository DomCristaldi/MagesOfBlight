using UnityEngine;
using System.Collections;

[System.Serializable]
public class BaseCombatState {

    

    protected BattleManager battleManRef;
    protected delegate void ConfirmationFunc();

    protected Coroutine ConfirmationChecker;

    protected BattleManager.CombatPhase phase;
    protected BattleManager.CombatPhase prevPhase;

    protected bool canUndo = false;
    protected bool undoingState = false;

    public BaseCombatState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false) {
        phase = thisCombatPhase;
        this.canUndo = canUndo;
    }


    public virtual void InitState() {

        battleManRef = BattleManager.singleton;

    }

    public virtual void UpdateState() {

        if (canUndo) {
            HandleCancelState();
        }    
    }

    public virtual void EndState() {
        if (canUndo && !undoingState) {
            battleManRef.PushPreviousCombatPhase(phase);
        }
    }

    protected virtual void HandleCancelState() {
        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Cancel) != 0.0f) {
            undoingState = true;

            //battleManRef.ChangeCombatState(prevPhase);
            battleManRef.ChangeCombatState(battleManRef.PopPreviousCombatPhase());
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
