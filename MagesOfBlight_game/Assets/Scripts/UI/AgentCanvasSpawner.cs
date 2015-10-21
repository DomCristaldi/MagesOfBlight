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
	private List<GameObject> actionButtonList = new List<GameObject>();

	//canvas reference for dom
	public GameObject agentCanvas;

	void Start () {
		//assign agent actions var
		agentActions = GetComponent<AgentActions>();
		actionDataList = agentActions.proactiveActions;

		//create ui for the agent
		CreateUI ();
	}

	void CreateUI(){
		//create canvas and parent it to the agent
		agentCanvas = (GameObject)Instantiate (agentCanvasPrefab.gameObject);
		agentCanvas.transform.SetParent (this.transform);
		//set canvas event camera and position in terms of the agent
		agentCanvas.GetComponent<Canvas> ().worldCamera = Camera.main;
		agentCanvas.transform.localPosition = new Vector3 (0f,2f,0f);
		//create buttons
		foreach (AgentActions.ActionData actionData in actionDataList) {
			//bumps up canvas by .3 everytime a new action is added to the list
			agentCanvas.transform.localPosition += new Vector3 (0f,.3f,0f);
			//create button
			GameObject buttonObject = (GameObject)Instantiate (actionButtonPrefab.gameObject);
			//set parent to canvas
			buttonObject.transform.SetParent (agentCanvas.transform);
			//change text of button
			buttonObject.GetComponentInChildren<Text>().text = actionData.action.actionName;
			//change action associated with button
			buttonObject.GetComponent<ButtonActionInfo>().action = actionData.action;
			//change button's onClick
			buttonObject.GetComponent<Button>().onClick.AddListener(() => { buttonObject.GetComponent<ButtonActionInfo>().SetBattleManagerAction();});
			//change button colors
			ColorBlock buttonColors = buttonObject.GetComponent<Button>().colors;
			buttonColors.normalColor = actionData.action.normalColor;
			buttonColors.highlightedColor = actionData.action.highlightedColor;
			buttonColors.pressedColor = actionData.action.pressedColor;
			buttonColors.disabledColor = actionData.action.disabledColor;
			buttonObject.GetComponent<Button>().colors = buttonColors;
			//change button text color
			if(buttonColors.normalColor != Color.white){
				//if its not white, the text should be white
				buttonObject.GetComponentInChildren<Text>().color = Color.white;
			}
			else{
				//else text should be black
				buttonObject.GetComponentInChildren<Text>().color = Color.black;
			}
			//scale button down
			buttonObject.transform.localScale = new Vector3(1.5f,1.5f,1.5f);
			//add button to list
			actionButtonList.Add(buttonObject);
		}
		//set ui to false
        agentCanvas.SetActive(false);
	}
	
}
