using UnityEngine;
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
	//audio to be played 
	public AudioSource audio; // <-------------------- assigned in inspector, needs to be same size as the dialogue (1 clip per line in convo)
	//number for handling the lists
	int dialogueIndexNumber;
	int conversationIndexNumber;

	public bool conversationActive;

	//list of dialogue obj from the conversation
	List<DialogueObject> dialogueList = new List<DialogueObject>();

	void Awake(){
		//DontDestroyOnLoad (gameObject);
	}

	// Use this for initialization
	void Start () {
		//init
		conversationIndexNumber = 0;
		dialogueIndexNumber = 0;
		dialogueList = convo[0].dialogue;
		conversationActive = false;
		showConversation(dialogueIndexNumber);
		dialogueIndexNumber++;

		//dialogueCanvas.enabled = false;
        SetCanvasState(false);
    }

	// Update is called once per frame
	void Update () {
		if (conversationActive) {
			//dialogueCanvas.enabled = true;
            //SetCanvasState(true);

            runConversation ();
		}
	}

	//function to call when we want to activate the next conversation
	public void runConversation(){
		//if enter is pressed and the conversation is done, turn off dialogue box and interate conversation number
		if (Input.GetKeyDown (KeyCode.Return) && dialogueIndexNumber == dialogueList.Count) {
			
            //dialogueCanvas.enabled = false;
            SetCanvasState(false);

            dialogueIndexNumber = 0;
			conversationIndexNumber++;
			if(conversationIndexNumber < convo.Count) {dialogueList = convo[conversationIndexNumber].dialogue;conversationActive = false;}
			else Destroy(gameObject);
		}
		//if enter is pressed, move to next convo as long as the dialogue is not over yet
		if(Input.GetKeyDown(KeyCode.Return) && dialogueIndexNumber < dialogueList.Count){
			showConversation(dialogueIndexNumber);
			dialogueIndexNumber++;
		}
	}

	//function to be called each iteration of the list
	void showConversation(int indexInList){
		//stop previous audio
		audio.Stop ();
		//start next audio
		if (dialogueList [indexInList].audioClip != null) {
			audio.clip = dialogueList [indexInList].audioClip;
			audio.Play ();
		}
		textDialogue.text = dialogueList [indexInList].line;
		characterImage.sprite = dialogueList [indexInList].sprite;
	}

    private void SetCanvasState(bool setting) {
        //dialogueCanvas.enabled = setting;
        gameObject.SetActive(setting);
    }

    public void ActivateDialogue() {
        SetCanvasState(true);
        conversationActive = true;
    }

}
