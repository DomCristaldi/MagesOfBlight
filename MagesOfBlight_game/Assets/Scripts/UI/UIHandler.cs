using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class UIHandler : MonoBehaviour {

	//button prefab
	public Button actionButton;

	//reference to each characters' canvas
	public Canvas avonCanvas;

	// Use this for initialization
	void Start () {
		GameObject tmp = Instantiate (actionButton.gameObject) as GameObject;
		tmp.transform.SetParent (avonCanvas.transform);

	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
