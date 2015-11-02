using UnityEngine;
using System.Collections;

/// <summary>
/// State for exiting Combat
/// </summary>

public class ExitCombatState : BaseCombatState {

    public ExitCombatState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false) : base(thisCombatPhase, canUndo) { }

    public override void InitState() {
        base.InitState();


    }

    public override void UpdateState() {
        base.UpdateState();


    }

    public override void EndState() {
        base.EndState();
    
        
    }

}
