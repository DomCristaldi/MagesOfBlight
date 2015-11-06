using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Healthbar : MonoBehaviour {

	//public slider in inspector to adjust meter
	[Range(0f,1f)]
	public float fillAmount;
	//image of the meter
	public Image circularSilder;
	public BaseStats stats;

	void Start() {
		//set to max health at beginning
		fillAmount = 1f;
		circularSilder = gameObject.GetComponent<Image> ();
	}
	void Update () {
		circularSilder.fillAmount = (stats.currentHealth/stats.maxHealth)/2f;    
	}
}
