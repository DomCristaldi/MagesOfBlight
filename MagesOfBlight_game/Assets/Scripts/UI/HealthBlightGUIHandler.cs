using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class HealthBlightGUIHandler : MonoBehaviour {

	public Image healthMeter;
	public Image blightMeter;

	public BaseStats stats;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		healthMeter.fillAmount = stats.currentHealth/200f;
		blightMeter.fillAmount = stats.currentBlight/200f;
	}
}
