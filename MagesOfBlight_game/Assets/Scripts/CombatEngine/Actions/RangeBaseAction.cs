using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RangeBaseAction : BaseAction {

	public override List<HexNode> CheckTiles () {
		List<HexNode> nodeList = new List<HexNode>();
		TileInfo start = BattleManager.singleton.selectedTile;
		List<TileInfo> outerRing = new List<TileInfo>();
		List<TileInfo> innerCircle = new List<TileInfo>();
		List<TileInfo> nextRing = new List<TileInfo>();
		outerRing.Add(start);
		int dist;
		for (dist = 0; dist < checkDistance; dist++) {
			if (outerRing.Count == 0) {
				break;
			}
			foreach (TileInfo ringNode in outerRing) {
				foreach (TileInfo node in ringNode.connections) {
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
			outerRing = new List<TileInfo>(nextRing);
			nextRing.Clear();
		}
		return nodeList;
	}

}
