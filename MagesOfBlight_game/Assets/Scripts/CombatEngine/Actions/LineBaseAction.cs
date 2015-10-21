using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class LineBaseAction : BaseAction {

	public bool canPierce;

	public override List<HexNode> CheckTiles () {
		return base.CheckTiles();
	}

}
