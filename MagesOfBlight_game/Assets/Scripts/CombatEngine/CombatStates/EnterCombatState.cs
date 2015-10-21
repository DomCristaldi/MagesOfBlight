using UnityEngine;
using System.Collections;

public class EnterCombatState : BaseCombatState {

    public override void InitState() {
        base.InitState();

        //***TODO: place all teams on the closest tiles***

        battleManRef.ChangeCombatState(BattleManager.CombatPhase.TileSelection);
    
    }

    public override void UpdateState() {
        base.UpdateState();




    }


    public override void EndState() {
        base.EndState();
    
    
    }

}
