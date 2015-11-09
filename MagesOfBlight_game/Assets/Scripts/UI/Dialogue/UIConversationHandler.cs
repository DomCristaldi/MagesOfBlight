﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class UIConversationHandler : MonoBehaviour {
	//list of conversation objects created from Assests -> create
	public List<Conversation> convo = new List<Conversation>();

	public Canvas dialogueCanvas;

	//dialogue tings that need to change
	public Text textDialogue;
	public Image characterImage;
	//audioclip to be played
	public AudioClip audioClip;
	//number for handling the lists
	int dialogueIndexNumber;
	int conversationIndexNumber;

	//list of dialogue obj from the conversation
	List<DialogueObject> dialogueList = new List<DialogueObject>();

	void Awake(){
		DontDestroyOnLoad (gameObject);
	}

	// Use this for initialization
	void Start () {
		//init
		conversationIndexNumber = 0;
		dialogueIndexNumber = 0;
		dialogueList = convo[0].dialogue;
	}
	
	// Update is called once per frame
	void Update () {
		//--------below is for testing only---------
		if (Input.GetKeyDown (KeyCode.Return) && !dialogueCanvas.enabled) {
			dialogueCanvas.enabled = true;
		}
		//if enter is pressed, move to next convo as long as the dialogue is not over yet
		if(Input.GetKeyDown(KeyCode.Return) && dialogueIndexNumber < dialogueList.Count-1){
			showConversation(dialogueIndexNumber);
			dialogueIndexNumber++;
		}
		//if enter is pressed and the conversation is done, turn off dialogue box and interate conversation number
		if (Input.GetKeyDown (KeyCode.Return) && dialogueIndexNumber == dialogueList.Count - 1) {
			dialogueCanvas.enabled = false;
			dialogueIndexNumber = 0;
			conversationIndexNumber++;
			if(conversationIndexNumber < convo.Count) dialogueList = convo[conversationIndexNumber].dialogue;
			else Destroy(gameObject);
		}
	}

	//function to be called each iteration of the list
	void showConversation(int indexInList){
		textDialogue.text = dialogueList [indexInList].line;
		characterImage.sprite = dialogueList [indexInList].sprite;
	}

}