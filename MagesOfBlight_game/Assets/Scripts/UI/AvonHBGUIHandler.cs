using UnityEngine;
using System.Collections;

public class AvonHBGUIHandler : HealthBlightGUIHandler {

	protected override void Start () {
		stats = (BaseStats)PCStats.avonStats;
		base.Start ();
	}
}
