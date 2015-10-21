using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RangeBaseAction : BaseAction {

	public override List<HexNode> CheckTiles () {
		List<HexNode> nodeList = new List<HexNode>();
		HexNode start = BattleManager.singleton.selectedTile;
		List<HexNode> outerRing = new List<HexNode>();
		List<HexNode> innerCircle = new List<HexNode>();
		List<HexNode> nextRing = new List<HexNode>();
		outerRing.Add(start);
		int dist;
		for (dist = 0; dist < checkDistance; dist++) {
			if (outerRing.Count == 0) {
				break;
			}
			foreach (HexNode ringNode in outerRing) {
				foreach (HexNode node in ringNode.connections) {
					if (node == null) {
						continue;
					}
					if (outerRing.Contains(node)) {
						continue;
					}
					if (innerCircle.Contains(node)) {
						continue;
					}
					if (nextRing.Contains(node)) {
						continue;
					}
					
				}
			}
			while (outerRing.Count > 0) {
				innerCircle.Add(outerRing[0]);
				outerRing.RemoveAt(0);
			}
			outerRing = new List<HexNode>(nextRing);
			nextRing.Clear();
		}
		return nodeList;
	}

}
