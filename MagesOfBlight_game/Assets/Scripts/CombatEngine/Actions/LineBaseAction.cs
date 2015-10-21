using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class LineBaseAction : BaseAction {

	public override List<HexNode> CheckTiles () {
		List<HexNode> nodeList = new List<HexNode>();
		HexNode start = BattleManager.singleton.selectedTile;
		
		return nodeList;
	}

}
