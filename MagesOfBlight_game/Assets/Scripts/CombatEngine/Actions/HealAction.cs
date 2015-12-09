using UnityEngine;
using System.Collections;
using JBirdEngine;

[CreateAssetMenuAttribute]
public class HealAction : RangeBaseAction {

    public override void Init () {
        base.Init();
        tileCheckFlags = EnumHelper.CombineFlags<TileCheckFlags>(TileCheckFlags.agentOccupied);
    }

    public override bool DoAction () {
        
        (BattleManager.singleton.targetTile.entityOnTile as TileAgent).Heal(damage);

        return ActionSuccess();

    }

}
