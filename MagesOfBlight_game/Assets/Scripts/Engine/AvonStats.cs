using UnityEngine;
using System.Collections;

public class AvonStats : BaseStats {

	protected override void Awake () {
		base.Awake ();
		PCStats.avonStats = this;
	}

}
