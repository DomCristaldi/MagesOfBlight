using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class UIConversationHandler : MonoBehaviour {
	//conversation object created from Assests -> create
	public Conversation convo;

	//dialogue tings that need to change
	public Text textDialogue;
	public Image characterImage;
	//audioclip to be played
	public AudioClip audioClip;
	//number for handling the conversation list
	public int indexNumber;

	//list of dialogue obj from the conversation
	List<DialogueObject> dialogueList = new List<DialogueObject>();

	// Use this for initialization
	void Start () {
		//init dialogue list
		dialogueList = convo.dialogue;
	}
	
	// Update is called once per frame
	void Update () {
		//if enter is pressed, move to next convo
		if(Input.GetKeyDown(KeyCode.Return)){
			indexNumber++;
			showConversation(indexNumber);
		}
	}

	//function to be called each iteration of the list
	void showConversation(int indexInList){
		if (indexInList > dialogueList.Count) return;
		textDialogue.text = dialogueList [indexInList].line;
		characterImage.sprite = dialogueList [indexInList].sprite;
	}

}
