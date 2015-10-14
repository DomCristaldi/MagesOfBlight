using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Healthbar : MonoBehaviour {

	public Image circularSilder;            //Healthbar image
	public float time;                      //In how much time the progress bar will fill/empty
	void Start() {
		circularSilder.fillAmount=0f;      // Initally progress bar is empty
	}
	void Update () {
		circularSilder.fillAmount += Time.deltaTime / time;         
	}
}
