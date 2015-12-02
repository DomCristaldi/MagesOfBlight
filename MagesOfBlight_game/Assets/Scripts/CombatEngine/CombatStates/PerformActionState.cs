using UnityEngine;
using System.Collections;
using JBirdEngine;

/// <summary>
/// This state handles any actions that are being performed
/// PLANS: add in interactions a la Paper Mario (maybe through other states / substates)
/// </summary>

public class PerformActionState : BaseCombatState {

    private AgentAnimController animControlRef;
    private ModelRotationController modelRotControl;

    private bool readyToPerformAction = false;

    public PerformActionState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false, bool canHoverGrid = false) : base(thisCombatPhase, canUndo, canHoverGrid) { }

	public override void InitState (){
		base.InitState ();

		if (BattleManager.singleton.selectedAction as MoveAction != null) {
			BattleManager.singleton.selectedAction.checkDistance = BattleManager.singleton.selectedAgent.moveSteps;
		}

        animControlRef = battleManRef.selectedAgent.GetComponent<AgentAnimController>();
        modelRotControl = battleManRef.selectedAgent.GetComponent<ModelRotationController>();


		battleManRef.selectedAction.agent = battleManRef.selectedAgent;


        animControlRef.TriggerAnim(battleManRef.selectedAction.animInfo);
        //modelRotControl.desiredPos = battleManRef.targetTile.transform.position;
	}

    public override void UpdateState() {
        base.UpdateState();

        //modelRotControl.SetDesiredLookDirec(battleManRef.targetTile.transform.position - battleManRef.selectedAgent.transform.position);


        //CheckForBlock();

        readyToPerformAction = true;

        if (readyToPerformAction) {
            if (battleManRef.selectedAction.DoAction()) {//returns true when finished
                battleManRef.ChangeCombatState(BattleManager.CombatPhase.CheckTeam);

            }
        }

    }

    public override void EndState() {
        base.EndState();

		if (BattleManager.singleton.selectedAction as MoveAction != null) {
			BattleManager.singleton.selectedAgent.moveSteps -= BattleManager.singleton.selectedAgent.motor.tilesMoved;
		}
		else {
			battleManRef.selectedAgent.UseTurn();
		}

        battleManRef.ClearFrameInfo();

        modelRotControl.SetDesiredLookDirec(-Vector3.forward);
    }

    private void CheckForBlock() {

    }

    //private IEnumerator

}
