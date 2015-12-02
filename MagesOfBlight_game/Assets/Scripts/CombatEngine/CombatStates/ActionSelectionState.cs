using UnityEngine;
using System.Collections;
using JBirdEngine;

/// <summary>
/// State for selecting Combat Actions via the UI
/// </summary>

public class ActionSelectionState : BaseCombatState {

    public ActionSelectionState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = true, bool canHoverGrid = false) : base(thisCombatPhase, canUndo, canHoverGrid) { }

    public override void InitState() {
        base.InitState();

        battleManRef.targetTile = null;

		foreach (AgentActions.ActionData actionData in battleManRef.selectedAgent.agentActions.proactiveActions) {
			if (battleManRef.selectedAgent.stats.currentBlight >= actionData.action.blightRequired) {
				actionData.known = true;
				actionData.usable = true;
			}
			else {
				actionData.usable = false;
			}
			if (!actionData.known) {
				actionData.button.SetActive(false);
			}
			else {
				actionData.button.SetActive(true);
				if (actionData.usable) {
					actionData.button.interactable = true;
				}
				else {
					actionData.button.interactable = false;
				}
			}
		}

		battleManRef.selectedAgent.GetComponent<AgentCanvasSpawner>().agentCanvas.SetActive(true);

        battleManRef.selectedAction = null;
    }

    public override void UpdateState() {
        base.UpdateState();
		if (battleManRef.selectedAction as MoveAction != null && battleManRef.selectedAgent.moveSteps <= 0) {
			battleManRef.selectedAction = null;
		}
        if (battleManRef.selectedAction != null) {
            if (battleManRef.selectedAction as DoNothingAction != null) {
                battleManRef.ChangeCombatState(BattleManager.CombatPhase.PerformAction);
            }
            else {
                battleManRef.ChangeCombatState(BattleManager.CombatPhase.TargetSelection);
            }
        }

    }

    public override void EndState() {
        base.EndState();

        battleManRef.selectedAgent.GetComponent<AgentCanvasSpawner>().agentCanvas.SetActive(false);
    
    }

}
