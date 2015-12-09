using UnityEngine;
using System.Collections;

public class AITileAgent : TileAgent {

    public AITileAgent prefab;

    public BossAITileAgent bossAI;

    public TileAgent aggroTarget;
    public TileAgent lastTarget;

    public AILogicState.BehaviourProtocol behaviourProtocol;

    public bool hasMoved = false;

    public override void RefreshTurn () {
        base.RefreshTurn();
        hasMoved = false;
    }

    public void SetAggro (TileAgent newTarget) {
        aggroTarget = newTarget;
    }

}
