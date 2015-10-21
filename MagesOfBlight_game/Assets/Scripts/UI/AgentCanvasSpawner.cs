using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(AgentActions))]
public class AgentCanvasSpawner : MonoBehaviour {

	//assigned on start
	public AgentActions agentActions;

	//need button prefab assigned in inspector
	public Button actionButtonPrefab;

	//canvas on the agent, need prefab assigned in inspector
	public Canvas agentCanvasPrefab;

	//list of possible actions
	private List<AgentActions.ActionData> actionDataList;

	//list of action buttons
	private List<GameObject> actionButtonList;

	void Start () {
		//assign agent actions var
		agentActions = GetComponent<AgentActions>();
		actionDataList = agentActions.proactiveActions;

		//create ui for the agent
		CreateUI ();
	}

	void CreateUI(){
		//create canvas and parent it to the agent
		GameObject agentCanvas = (GameObject)Instantiate (agentCanvasPrefab.gameObject);
		agentCanvas.transform.SetParent (this.transform);
		//create buttons
		foreach (AgentActions.ActionData actionData in actionDataList) {
			//create button
			GameObject tmp = (GameObject)Instantiate (actionButtonPrefab.gameObject);
			//set parent to canvas
			tmp.transform.SetParent (agentCanvasPrefab.transform);
			//change text of button
			tmp.GetComponentInChildren<Text>().text = actionData.action.actionName;
			//change button colors
			ColorBlock buttonColors = tmp.GetComponent<Button>().colors;
			buttonColors.normalColor = actionData.action.normalColor;
			buttonColors.highlightedColor = actionData.action.highlightedColor;
			buttonColors.pressedColor = actionData.action.pressedColor;
			buttonColors.disabledColor = actionData.action.disabledColor;
			//change button text color
			if(buttonColors.normalColor != Color.white){
				//if its not white, the text should be white
				tmp.GetComponentInChildren<Text>().color = Color.white;
			}
			else{
				//else text should be black
				tmp.GetComponentInChildren<Text>().color = Color.black;
			}
			//add button to list
			actionButtonList.Add(tmp);
		}

	}
	
}
