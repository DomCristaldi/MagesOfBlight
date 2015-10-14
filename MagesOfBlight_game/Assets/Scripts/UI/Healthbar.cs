using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Healthbar : MonoBehaviour {

	//public slider in inspector to adjust meter
	[Range(0f,1f)]
	public float fillAmount;
	//image of the meter
	public Image circularSilder;

	void Start() {
		//set to max health at beginning
		fillAmount = 1f;
	}
	void Update () {
		circularSilder.fillAmount = fillAmount/2;    
	}
}
