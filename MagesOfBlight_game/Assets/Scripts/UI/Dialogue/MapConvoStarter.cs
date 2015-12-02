using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class MapConvoStarter : MonoBehaviour {

	bool done = false;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		if (!done) {
			if (transform.GetChild (1).gameObject.activeSelf == false) {
				transform.GetChild (1).GetComponent<UIConversationHandler> ().ActivateDialogue ();
				done = true;
			}
		}
	}
}
