using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RangeBaseAction : BaseAction {

	public override List<HexNode> CheckTiles () {
		List<HexNode> nodeList = new List<HexNode>();
		HexNode start = BattleManager.singleton.selectedTile.node;
		int dist = 1;
		for (int i = 1; i < checkDistance; i++) {

		}
		return nodeList;
	}

}
