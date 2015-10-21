using UnityEngine;
using System.Collections;

public class ActionSelectionState : BaseCombatState {

    public override void InitState() {
        base.InitState();

        battleManRef.selectedAgent.GetComponent<AgentCanvasSpawner>().agentCanvas.SetActive(true);
    }

    public override void UpdateState() {
        base.UpdateState();

        Debug.Log("Select action");

        if (battleManRef.selectedAction != null) {
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.TargetSelection);
        }

    }

    public override void EndState() {
        base.EndState();

        battleManRef.selectedAgent.GetComponent<AgentCanvasSpawner>().agentCanvas.SetActive(false);
    
    }

}
