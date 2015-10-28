using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using JBirdEngine;

public class LineBaseAction : BaseAction {

	public override List<HexNode> CheckTiles () {
		List<HexNode> nodeList = new List<HexNode>();
		HexNode start = BattleManager.singleton.selectedTile;
		for (int i = 0; i < 6; i++) {
			HexNode checkNode = start;
			while (checkNode.connections[i] != null) {
				checkNode = checkNode.connections[i];
				if (checkNode.entityOnTile != null) {
					if (checkNode.entityOnTile as TileAgent != null) {
						if (EnumHelper.ContainsFlag(tileCheckFlags, TileCheckFlags.agentOccupied)) {
							nodeList.Add(checkNode);
						}
						else if (EnumHelper.ContainsFlag(tileCheckFlags, TileCheckFlags.occupied)) {
							nodeList.Add(checkNode);
						}
					}
					else if (EnumHelper.ContainsFlag(tileCheckFlags, TileCheckFlags.occupied)) {
						nodeList.Add(checkNode);
					}
					if (!checkThroughOccupied) {
						break;
					}
				}
				else {
					if (EnumHelper.ContainsFlag(tileCheckFlags, TileCheckFlags.unoccupied)) {
						nodeList.Add(checkNode);
					}
				}
			}
		}
		return nodeList;
	}

}
