﻿using UnityEngine;
using System.Collections;

public class ActionSelectionState : BaseCombatState {

    public ActionSelectionState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = true) : base(thisCombatPhase, canUndo) { }

    public override void InitState(BattleManager.CombatPhase cameFromPhase, bool logPrev = true) {
        base.InitState(cameFromPhase, logPrev);

        battleManRef.selectedAgent.GetComponent<AgentCanvasSpawner>().agentCanvas.SetActive(true);

        battleManRef.selectedAction = null;
    }

    public override void UpdateState() {
        base.UpdateState();

        if (battleManRef.selectedAction != null) {
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.TargetSelection);
        }

    }

    public override void EndState() {
        base.EndState();

        battleManRef.selectedAgent.GetComponent<AgentCanvasSpawner>().agentCanvas.SetActive(false);
    
    }

}
