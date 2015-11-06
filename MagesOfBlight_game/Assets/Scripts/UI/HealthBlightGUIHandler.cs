using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class HealthBlightGUIHandler : MonoBehaviour {

	public Image healthMeter;
	public Image blightMeter;

	public BaseStats stats;

	protected virtual void Start () {

	}

	void Update () {
		healthMeter.fillAmount = stats.currentHealth/200f;
		blightMeter.fillAmount = stats.currentBlight/200f;
	}
}
