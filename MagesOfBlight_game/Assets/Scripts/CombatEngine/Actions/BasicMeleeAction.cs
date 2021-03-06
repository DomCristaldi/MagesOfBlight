﻿using UnityEngine;
using System.Collections;
using JBirdEngine;

[CreateAssetMenuAttribute]
public class BasicMeleeAction : LineBaseAction {

    bool didWhap;
    bool waitOver;

	public override void Init () {
		base.Init ();
		checkDistance = 1;
		tileCheckFlags = EnumHelper.CombineFlags<TileCheckFlags>(TileCheckFlags.agentOccupied);
        waitOver = false;
        didWhap = false;
	}

	public override bool DoAction () {
		TileAgent targetAgent = (TileAgent)BattleManager.singleton.targetTile.entityOnTile;
        if (targetAgent != null && BattleManager.singleton.selectedTile.connections.Contains(BattleManager.singleton.targetTile) && !didWhap) {
            targetAgent.stats.TakeDamage(damage);
            didWhap = true;
            BattleManager.singleton.StartCoroutine(WaitAfterHit());
        }
        if (waitOver) {
            return ActionSuccess();
        }
        return false;
	}

    IEnumerator WaitAfterHit () {
        yield return new WaitForSeconds(waitTimeAfterHit);
        waitOver = true;
        yield break;
    }

}
