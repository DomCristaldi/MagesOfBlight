using UnityEngine;
using System.Collections;

public class NuriaHBGUIHandler : HealthBlightGUIHandler {

	protected override void Start () {
		stats = (BaseStats)PCStats.nuriaStats;
		base.Start ();
	}
}
