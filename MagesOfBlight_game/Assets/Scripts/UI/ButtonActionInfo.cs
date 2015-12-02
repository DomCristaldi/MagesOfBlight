using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class ButtonActionInfo : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler {

	public AgentActions.ActionData actionData;

	public GameObject tooltipPrefab;
	public GameObject HUDCanvas;

	public GameObject tooltip;

	private string name;
	private string blightCost;
	private string damage;

	// on start, get info for tooltip and instantiate prefab
	void Start(){
		tooltip = (GameObject)Instantiate (tooltipPrefab);
		tooltip.transform.SetParent (transform);
		tooltip.transform.localScale = new Vector3 (1,1,1);
		tooltip.transform.localPosition = new Vector3 (100,0,0);
		tooltip.SetActive (false);
	}

	public void SetBattleManagerAction () {
		if (actionData.known && actionData.usable) {
			BattleManager.singleton.selectedAction = actionData.action;
			//Debug.Log ("click");
		}
	}

	void OpenTooltip(){
		name = actionData.action.actionName;
		blightCost = "Cost: " + actionData.action.blightGiven;
		damage = "Dam: " + actionData.action.damage;

		tooltip.transform.GetChild (0).GetComponent<Text> ().text = name;
		tooltip.transform.GetChild (1).GetComponent<Text> ().text = blightCost;
		tooltip.transform.GetChild (2).GetComponent<Text> ().text = damage;

		tooltip.SetActive (true);
	}

	void CloseTooltip(){
		tooltip.SetActive (false);
	}

	//when hovered over, show tooltip
	public void OnPointerEnter(PointerEventData data){
		OpenTooltip ();
	}

	//close tooltip
	public void OnPointerExit(PointerEventData data){
		CloseTooltip ();
	}

}
