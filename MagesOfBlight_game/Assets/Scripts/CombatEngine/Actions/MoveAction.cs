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

        //ASSIGN PATH
        if (BattleManager.singleton.selectedAgent.tileMotor.suppliedPath == null || BattleManager.singleton.selectedAgent.tileMotor.suppliedPath.Count == 0) {

            Debug.Log("assign");

            BattleManager.singleton.selectedAgent.tileMotor.GivePath(AIHelper.AStar<HexNode>(BattleManager.singleton.selectedTile, BattleManager.singleton.targetTile, mode: AIHelper.HeuristicMode.hexagonal));
            
            //List<HexNode> hexPath = AIHelper.AStar<HexNode>(BattleManager.singleton.selectedTile, BattleManager.singleton.targetTile, mode: AIHelper.HeuristicMode.hexagonal);

            //List<TileInfo> tilePath = (List<TileInfo>)hexPath.Cast<TileInfo>();

            //BattleManager.singleton.selectedAgent.tileMotor.GivePath(tilePath);

            //BattleManager.singleton.selectedAgent.tileMotor.suppliedPath = AIHelper.AStar<TileInfo>(BattleManager.singleton.selectedTile, BattleManager.singleton.targetTile, mode: AIHelper.HeuristicMode.hexagonal);
        }

        //EXECUTE
        bool pathingResult = BattleManager.singleton.selectedAgent.tileMotor.NavigatePath();

        if (pathingResult == true) {
            return ActionSuccess();
        }

        return pathingResult;

        /*
        if (!doneMoving && moveRoutine == null) {
            moveRoutine = BattleManager.singleton.StartCoroutine(MoveRoutine());
        }
        else if (doneMoving) {
			return ActionSuccess();
        }
        return doneMoving;
        */
	}

	IEnumerator MoveRoutine () {
        doneMoving = false;
		if (BattleManager.singleton.selectedTile == null || BattleManager.singleton.targetTile == null) {
			Debug.LogError("MoveAction: invalid start or end");
			doneMoving = true;
            moveRoutine = null;
			yield break;
		}
		List<HexNode> path = AIHelper.AStar<HexNode>(BattleManager.singleton.selectedTile, BattleManager.singleton.targetTile, mode: AIHelper.HeuristicMode.hexagonal);
		while (!doneMoving) {
			if (path.Count == 0) {
				doneMoving = true;
                moveRoutine = null;
                BattleManager.singleton.selectedAgent.motor.KillMotor();
				break;
			}
			BattleManager.singleton.selectedAgent.motor.desiredDirec = (path[0].transform.position - BattleManager.singleton.selectedAgent.transform.position).normalized;
			if (Vector3.Distance(BattleManager.singleton.selectedAgent.transform.position, path[0].transform.position) < targetPrecision) {
				path.RemoveAt(0);
			}
			yield return null;
		}
		yield break;
	}

}
