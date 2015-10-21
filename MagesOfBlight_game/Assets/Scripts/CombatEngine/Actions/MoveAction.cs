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
		List<HexNode> path = AIHelper.AStar(BattleManager.singleton.selectedTile, BattleManager.singleton.targetTile, mode: AIHelper.HeuristicMode.hexagonal);
		while (!doneMoving) {
			if (path.Count == 0) {
				doneMoving = true;
				break;
			}

			yield return null;
		}
		yield break;
	}

}
