using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using JBirdEngine;

[CreateAssetMenuAttribute]
public class MoveAction : RangeBaseAction {

	private bool doneMoving;
	private Coroutine moveRoutine;

	public override void Init () {
		base.Init();
		tileCheckFlags = EnumHelper.CombineFlags<TileCheckFlags>(TileCheckFlags.unoccupied);
		moveRoutine = null;
		doneMoving = false;
	}

	public override bool DoAction () {
		if (moveRoutine == null) {
			moveRoutine = BattleManager.singleton.StartCoroutine(MoveRoutine());
		}
		return doneMoving;
	}

	IEnumerator MoveRoutine () {
		if (BattleManager.singleton.selectedTile == null || BattleManager.singleton.targetTile == null) {
			Debug.LogError("MoveAction: invalid start or end");
			doneMoving = true;
			yield break;
		}
		List<HexNode> path = AIHelper.AStar<HexNode>(BattleManager.singleton.selectedTile, BattleManager.singleton.targetTile, mode: AIHelper.HeuristicMode.hexagonal);
		while (!doneMoving) {
			if (path.Count == 0) {
				doneMoving = true;
				break;
			}
			if (path.Count == 1) {
				BattleManager.singleton.selectedAgent.motor.desiredPoint = path[0].transform.position;
			}
			else {
				BattleManager.singleton.selectedAgent.motor.desiredDirec = (path[0].transform.position - BattleManager.singleton.selectedAgent.transform.position).normalized;
			}
			if (Vector3.Distance(BattleManager.singleton.selectedAgent.transform.position, path[0].transform.position) < targetPrecision) {
				path.RemoveAt(0);
			}
			yield return null;
		}
		yield break;
	}

}
