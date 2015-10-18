using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class UIHandler : MonoBehaviour {

	//button prefab
	public Button actionButton;

	//reference to each characters' canvas
	public Canvas avonCanvas;

	//list of commands
	public List<string> avonCommands = new List<string>();

	// Use this for initialization
	void Start () {

		CreateButtons ("Avon", avonCommands);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	//take in list of moves and turn them into buttons
	void CreateButtons(string character, List<string> commands){
		foreach(string command in commands){
			//create button
			GameObject tmp = (GameObject)Instantiate (actionButton.gameObject);
			//set parent to apporopriate character canvas
			tmp.transform.SetParent (avonCanvas.transform);
			//change text of button
			tmp.GetComponentInChildren<Text>().text = command;
			//change text color of button

			//change background color
			ColorBlock buttonColors = tmp.GetComponent<Button>().colors;

		}
	}
}
