using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Healthbar : MonoBehaviour {

	//public slider in inspector to adjust health
	[Range(0f,1f)]
	public float fillAmount;
	//image of the health circle
	public Image circularSilder;
	void Start() {
		fillAmount = 1f;
	}
	void Update () {
		circularSilder.fillAmount = fillAmount/2;    
	}
}
