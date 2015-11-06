using UnityEngine;
using System.Collections;

public class SteinHBGUIHandler : HealthBlightGUIHandler {

	protected override void Start () {
		stats = (BaseStats)PCStats.steinStats;
		base.Start ();
	}
}
