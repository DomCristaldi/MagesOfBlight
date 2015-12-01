using UnityEngine;
using System.Collections;

public class AISelection : BaseCombatState {

    public AISelection(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false, bool canHoverGrid = false) : base(thisCombatPhase, canUndo, canHoverGrid) { }

    public override void InitState () {
        base.InitState();

        for (int i = 0; i < battleManRef.enemyTeam.teamMembers.Count; i++) {
            if (battleManRef.enemyTeam.teamMembers[i].hasTurn) {
                battleManRef.selectedAgent = battleManRef.enemyTeam.teamMembers[i];
                battleManRef.selectedTile = battleManRef.selectedAgent.motor.currentTile;
                break;
            }
        }

        battleManRef.ChangeCombatState(BattleManager.CombatPhase.AILogic);

    }

}
