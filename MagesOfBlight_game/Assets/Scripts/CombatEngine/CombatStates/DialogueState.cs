using UnityEngine;
using System.Collections;

public class DialogueState : BaseCombatState {

    BattleManager.CombatPhase nextCombatPhase;

    public DialogueState(BattleManager.CombatPhase thisCombatPhase, BattleManager.CombatPhase nextCombatPhase, bool canUndo = false, bool canHoverGrid = false) : base(thisCombatPhase, canUndo, canHoverGrid) {
        this.nextCombatPhase = nextCombatPhase;
    }


    public override void InitState() {
        base.InitState();

        //UIController.singleton.ConversationHandler.startConversation = true;
        UIController.singleton.ConversationHandler.ActivateDialogue();
    }


    public override void UpdateState() {
        base.UpdateState();

        if (UIController.singleton.ConversationHandler.conversationActive == false) {
            //Debug.Log("TRANSITION STATE");
            battleManRef.ChangeCombatState(nextCombatPhase);
        }
    }

    public override void EndState() {
        base.EndState();
    }

}
