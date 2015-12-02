using UnityEngine;
using System.Collections;
using JBirdEngine;

[CreateAssetMenuAttribute]
public class BasicMeleeAction : LineBaseAction {

	public override void Init () {
		base.Init ();
		checkDistance = 1;
		tileCheckFlags = EnumHelper.CombineFlags<TileCheckFlags>(TileCheckFlags.agentOccupied);
	}

	public override bool DoAction () {
		TileAgent targetAgent = (TileAgent)BattleManager.singleton.targetTile.entityOnTile;
		if (targetAgent != null && BattleManager.singleton.selectedTile.connections.Contains(BattleManager.singleton.targetTile)) {
			targetAgent.stats.TakeDamage(damage);
		}
		return ActionSuccess();
	}

}
