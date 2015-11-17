using UnityEngine;
using System.Collections;

public class ButtonActionInfo : MonoBehaviour {

	public AgentActions.ActionData actionData;

	public void SetBattleManagerAction () {
		if (actionData.known && actionData.usable) {
			BattleManager.singleton.selectedAction = actionData.action;
			//Debug.Log ("click");
		}
	}

}
