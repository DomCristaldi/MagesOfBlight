using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Canvas))]
public class UIController : MonoBehaviour {

    public static UIController singleton = null;

    private Canvas _canvas;

    public UIConversationHandler ConversationHandler;


    void Awake() {
        if (singleton == null) {
            singleton = this;
        }

        _canvas = GetComponent<Canvas>();
        

        if (ConversationHandler == null) {
            ConversationHandler = transform.GetComponentInChildren<UIConversationHandler>();
        }
        if (ConversationHandler.dialogueCanvas == null) {
            ConversationHandler.dialogueCanvas = _canvas;
        }
    }

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
