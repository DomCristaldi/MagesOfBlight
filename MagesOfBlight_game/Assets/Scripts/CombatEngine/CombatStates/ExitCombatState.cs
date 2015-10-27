using UnityEngine;
using System.Collections;

public class ExitCombatState : BaseCombatState {

    public ExitCombatState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false) : base(thisCombatPhase, canUndo) { }

    public override void InitState(BattleManager.CombatPhase cameFromPhase, bool logPrev = true) {
        base.InitState(cameFromPhase, logPrev);


    }

    public override void UpdateState() {
        base.UpdateState();


    }

    public override void EndState() {
        base.EndState();
    
        
    }

}
