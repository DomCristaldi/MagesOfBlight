using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Confirmation : MonoBehaviour {

	public BattleManager battleManager;

	private GameObject confirmButton;

	// Use this for initialization
	void Start () {
		confirmButton = transform.GetChild (0).gameObject;
		confirmButton.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		if(battleManager.targetTile != null){
			transform.localPosition = battleManager.targetTile.transform.localPosition;
			confirmButton.SetActive (true);
		}
		else{
			confirmButton.SetActive (false);
		}
	}
}
