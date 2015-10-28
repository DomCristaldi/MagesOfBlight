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
        if (BattleManager.singleton.selectedAgent.tileMotor.suppliedPath == null || BattleManager.singleton.selectedAgent.tileMotor.suppliedPath.Count == 0) {
            BattleManager.singleton.selectedAgent.tileMotor.GivePath(AIHelper.AStar<HexNode>(BattleManager.singleton.selectedTile, BattleManager.singleton.targetTile, mode: AIHelper.HeuristicMode.hexagonal));
        }

        //EXECUTE
        bool pathingResult = BattleManager.singleton.selectedAgent.tileMotor.NavigatePath();

        if (pathingResult == true) {
            return ActionSuccess();
        }

        return pathingResult;
	}

}
