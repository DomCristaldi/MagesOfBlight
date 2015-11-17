using UnityEngine;
using System.Collections;
using JBirdEngine;

/// <summary>
/// This state handles any actions that are being performed
/// PLANS: add in interactions a la Paper Mario (maybe through other states / substates)
/// </summary>

public class PerformActionState : BaseCombatState {

    public PerformActionState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false, bool canHoverGrid = false) : base(thisCombatPhase, canUndo, canHoverGrid) { }

	public override void InitState (){
		base.InitState ();

		battleManRef.selectedAction.agent = battleManRef.selectedAgent;
	}

    public override void UpdateState() {
        base.UpdateState();

        CheckForBlock();

        if (battleManRef.selectedAction.DoAction()) {//returns true when finished
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.CheckTeam);
        }

    }

    public override void EndState() {
        base.EndState();

        battleManRef.selectedAgent.UseTurn();

        battleManRef.ClearFrameInfo();
    }

    private void CheckForBlock() {

    }

}
