using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using JBirdEngine;

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
					if (node.entityOnTile != null) {
						if (checkThroughOccupied) {
							nextRing.Add(node);
						}
					}
					else {
						nextRing.Add(node);
					}
					if (node.entityOnTile == null) {
						if (EnumHelper.ContainsFlag(tileCheckFlags, TileCheckFlags.unoccupied)) {
							nodeList.Add((HexNode)node);
						}
					}
					else if (node.entityOnTile != null) {
						if (node.entityOnTile as TileAgent != null) {
							if (EnumHelper.ContainsFlag(tileCheckFlags, TileCheckFlags.agentOccupied)) {
								nodeList.Add((HexNode)node);
							}
							else if (EnumHelper.ContainsFlag(tileCheckFlags, TileCheckFlags.occupied)) {
								nodeList.Add((HexNode)node);
							}
						}
						else if (EnumHelper.ContainsFlag(tileCheckFlags, TileCheckFlags.occupied)) {
							nodeList.Add((HexNode)node);
						}
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
