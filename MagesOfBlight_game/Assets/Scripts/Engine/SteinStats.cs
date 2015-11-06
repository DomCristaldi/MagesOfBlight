using UnityEngine;
using System.Collections;

public class SteinStats : BaseStats {
	
	protected override void Awake () {
		base.Awake ();
		PCStats.steinStats = this;
	}

}
