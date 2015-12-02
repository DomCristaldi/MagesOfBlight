using UnityEngine;
using System.Collections;
using JBirdEngine;

public class BossAITileAgent : AITileAgent {

    public HexGrid.ConnectionIndex spawnDirection;

    protected override void Update () {
        if (battleManRef.curCombatTeam == team) {
            SetWalkable();
        }
        else {
            SetObstructed();
        }
        base.Update();
    }

    void SetWalkable () {
        foreach (HexNode node in motor.currentTile.connections) {
            node.entityOnTile = null;
        }
        motor.currentTile.entityOnTile = null;
    }

    void SetObstructed () {
        foreach (HexNode node in motor.currentTile.connections) {
            node.entityOnTile = this;
        }
        motor.currentTile.entityOnTile = this;
    }

}
