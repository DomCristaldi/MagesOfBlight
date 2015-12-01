using UnityEngine;
using System.Collections;

public class AITileAgent : TileAgent {

    public TileAgent aggroTarget;
    public TileAgent lastTarget;

    public AILogic.BehaviourProtocol behaviourProtocol;

    public bool hasMoved = false;

    public override void RefreshTurn () {
        base.RefreshTurn();
        hasMoved = false;
    }

}
