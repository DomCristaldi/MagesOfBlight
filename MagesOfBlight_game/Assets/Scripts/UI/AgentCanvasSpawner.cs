﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(AgentActions))]
[RequireComponent(typeof(BaseStats))]
public class AgentCanvasSpawner : MonoBehaviour {

	//assigned on start
	public AgentActions agentActions;

	//need button prefab assigned in inspector
	public Button actionButtonPrefab;

	//canvas on the agent, need prefab assigned in inspector
	public Canvas agentCanvasPrefab;

	//healthbar prefab assigned in inspector
	//public Slider healthbarPrefab;

	//list of possible actions
	private List<AgentActions.ActionData> actionDataList;

	//list of action buttons
	private List<GameObject> actionButtonList = new List<GameObject>();

	//canvas reference for dom
	public GameObject agentCanvas;
	public GameObject agentHUDCanvas;
	public GameObject healthbar;

	void Start () {
		//assign agent actions var
		agentActions = GetComponent<AgentActions>();
		actionDataList = agentActions.proactiveActions;

		//create ui for the agent
		CreateUI ();
	}

	void CreateUI(){
	//---------------Actions---------------------------------------------
		//create canvas and parent it to the agent
		agentCanvas = (GameObject)Instantiate (agentCanvasPrefab.gameObject, Vector3.zero, Quaternion.identity);
		agentCanvas.transform.SetParent (this.transform);
		agentCanvas.transform.name = "Action Canvas";
		//set canvas event camera and position in terms of the agent
		agentCanvas.GetComponent<Canvas> ().worldCamera = Camera.main;
		agentCanvas.transform.localPosition = new Vector3 (0f, 2f, 0f);
		//create buttons
		foreach (AgentActions.ActionData actionData in actionDataList) {
			//bumps up canvas by .3 everytime a new action is added to the list
			agentCanvas.transform.localPosition += new Vector3 (0f, .3f, 0f);
			//create button
			GameObject buttonObject = (GameObject)Instantiate (actionButtonPrefab.gameObject);
			//change name of button
			buttonObject.transform.name = actionData.action.actionName + " Button";
			//set parent to canvas
			buttonObject.transform.SetParent (agentCanvas.transform);
			//zero out button position
			buttonObject.transform.localPosition = Vector3.zero;
			//change text of button
			buttonObject.GetComponentInChildren<Text> ().text = actionData.action.actionName;
			//change action associated with button
			buttonObject.GetComponent<ButtonActionInfo> ().action = actionData.action;
			//change button's onClick
			buttonObject.GetComponent<Button> ().onClick.AddListener (() => {
				buttonObject.GetComponent<ButtonActionInfo> ().SetBattleManagerAction ();});
			//change button colors
			ColorBlock buttonColors = buttonObject.GetComponent<Button> ().colors;
			buttonColors.normalColor = actionData.action.normalColor;
			buttonColors.highlightedColor = actionData.action.highlightedColor;
			buttonColors.pressedColor = actionData.action.pressedColor;
			buttonColors.disabledColor = actionData.action.disabledColor;
			buttonObject.GetComponent<Button> ().colors = buttonColors;
			//change button text color
			if (buttonColors.normalColor != Color.white) {
				//if button color is not white, the text should be white
				buttonObject.GetComponentInChildren<Text> ().color = Color.white;
			} else {
				//else text should be black
				buttonObject.GetComponentInChildren<Text> ().color = Color.black;
			}
			//if action is not usable than disable it
			if (!actionData.usable) {
				buttonObject.GetComponent<Button> ().interactable = false;
			}
			//if action is not known, disable the game object
			if (!actionData.known) {
				buttonObject.SetActive (false);
			}
			//scale button down
			buttonObject.transform.localScale = new Vector3 (1.5f, 1.5f, 1.5f);
			//add button to list
			actionButtonList.Add (buttonObject);
		}
		//set ui to false
		agentCanvas.SetActive (false);
	}
	//--------------Healthbar-------------------------------------
		/*
		//needs a new canvas, set up same way as action button canvas
		agentHUDCanvas = (GameObject)Instantiate (agentCanvasPrefab.gameObject, Vector3.zero, Quaternion.identity);
		agentHUDCanvas.transform.SetParent (this.transform);
		agentHUDCanvas.transform.name = "HUD Canvas";
		agentHUDCanvas.transform.localPosition = new Vector3 (0f,2.3f,0f);
		//set canvas event camera and position in terms of the agent
		agentHUDCanvas.GetComponent<Canvas> ().worldCamera = Camera.main;
		agentHUDCanvas.transform.localPosition = new Vector3 (0f,2f,0f);
		healthbar = (GameObject)Instantiate (healthbarPrefab.gameObject);
		healthbar.transform.SetParent (agentHUDCanvas.transform);
		healthbar.name = "Health Bar";
		//zero out health position
		healthbar.transform.localPosition = Vector3.zero;
		Slider healthbarSlider = healthbar.GetComponent<Slider> ();
		healthbarSlider.maxValue = GetComponent<BaseStats> ().maxHealth;
		healthbarSlider.minValue = 0;
		healthbarSlider.value = GetComponent<BaseStats> ().currentHealth;
		//scale healthbar
		healthbar.transform.localScale = new Vector3(10f,10f,0);
	}
	//function to call to change UI e.g. when button canvas is enabled, check button usability and deactivate hud cavas
	public void activateUI(){

	}

	void Update(){
		//update health
		healthbar.GetComponent<Slider> ().value = GetComponent<BaseStats> ().currentHealth;
	}
	*/
}
