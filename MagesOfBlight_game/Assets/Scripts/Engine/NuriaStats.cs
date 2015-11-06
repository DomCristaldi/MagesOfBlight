using UnityEngine;
using System.Collections;

public class NuriaStats : BaseStats {

	protected override void Awake () {
		base.Awake ();
		PCStats.nuriaStats = this;
	}

}
