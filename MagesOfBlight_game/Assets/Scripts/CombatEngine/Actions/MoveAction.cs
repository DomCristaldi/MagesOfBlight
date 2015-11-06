using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using JBirdEngine;

[CreateAssetMenuAttribute]
public class MoveAction : RangeBaseAction {

	public override void Init () {
		base.Init();
		tileCheckFlags = EnumHelper.CombineFlags<TileCheckFlags>(TileCheckFlags.unoccupied);
	}

	public override bool DoAction () {        

        //ASSIGN PATH
        if (BattleManager.singleton.selectedAgent.motor.suppliedPath == null || BattleManager.singleton.selectedAgent.motor.suppliedPath.Count == 0) {
            BattleManager.singleton.selectedAgent.motor.GivePath(AIHelper.AStar<HexNode>(BattleManager.singleton.selectedTile, BattleManager.singleton.targetTile, mode: AIHelper.HeuristicMode.hexagonal));
        }

        //EXECUTE
        bool pathingResult = BattleManager.singleton.selectedAgent.motor.NavigatePath();

        if (pathingResult == true) {
            return ActionSuccess();
        }

        return pathingResult;
	}

}
