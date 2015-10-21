using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class BlightMeter : MonoBehaviour {

	//public slider in inspector to adjust meter
	[Range(0f,1f)]
	public float fillAmount;
	//image of the meter
	public Image circularSilder;
	
	void Start() {
		//set to half blight at beginning
		fillAmount = .5f;
	}
	void Update () {
		circularSilder.fillAmount = fillAmount/2;    
	}
}
