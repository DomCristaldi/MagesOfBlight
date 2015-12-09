using UnityEngine;
using System.Collections;

/// <summary>
/// State for exiting Combat
/// </summary>

public class ExitCombatState : BaseCombatState {

    public ExitCombatState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false, bool canHoverGrid = false) : base(thisCombatPhase, canUndo, canHoverGrid) { }

    public override void InitState() {
        base.InitState();

        if (BattleManager.singleton.enemyTeam.numberOfTeamMembers == 0) {
            TransitionStatHandler.RecoverStats();
            SceneTransitionHandler.singleton.LoadNextLevel();
        }
        else if (BattleManager.singleton.playerTeam.numberOfTeamMembers != 3) {
            TransitionStatHandler.ResetStats();
            SceneTransitionHandler.singleton.ReloadLevel();
        }
        else {
            Debug.LogError("Exit Combat State doesn't know where to go. Come here and add a proper transition condition");
        }
    }

    public override void UpdateState() {
        base.UpdateState();


    }

    public override void EndState() {
        base.EndState();
    
        
    }

}
