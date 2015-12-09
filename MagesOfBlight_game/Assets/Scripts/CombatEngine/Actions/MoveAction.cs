using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using JBirdEngine;

[CreateAssetMenuAttribute]
public class MoveAction : RangeBaseAction {

    bool firstDoAction;

	public override void Init () {
		base.Init();
        firstDoAction = true;
		tileCheckFlags = EnumHelper.CombineFlags<TileCheckFlags>(TileCheckFlags.unoccupied);
	}

	public override bool DoAction () {

        if (firstDoAction) {
            foreach (HexNode node in HexGridAssembler.singleton.tiles) {
                if (node.entityOnTile != null && node.entityOnTile != BattleManager.singleton.selectedAgent) {
                    node.RemoveFromTemporaryGraph();
                }
            }
            firstDoAction = false;
        }

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

    protected override bool ActionSuccess () {
        foreach (HexNode node in HexGridAssembler.singleton.tiles) {
            if (node.entityOnTile != null) {
                node.AddToTemporaryGraph();
            }
        }
        return base.ActionSuccess();
    }

}
