using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using JBirdEngine;

public class BossAITileAgent : AITileAgent {

    public HexGrid.ConnectionIndex spawnDirection;

    public HexNode spawnHex {
        get { return motor.currentTile.connections[(int)spawnDirection]; }
    }

    private bool _firstLateUpdate;
    public List<AITileAgent> respawnQueue;

    protected override void Start () {
        base.Start();
        _firstLateUpdate = true;
    }

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
        if (motor.currentTile == null) {
            return;
        }
        foreach (HexNode node in motor.currentTile.connections) {
            node.entityOnTile = null;
        }
        motor.currentTile.entityOnTile = null;
    }

    void SetObstructed () {
        if (motor.currentTile == null) {
            return;
        }
        foreach (HexNode node in motor.currentTile.connections) {
            if (node == null) {
                continue;
            }
            node.entityOnTile = this;
        }
        motor.currentTile.entityOnTile = this;
    }

    void LateUpdate () {
        if (_firstLateUpdate) {
            foreach (TileAgent enemy in BattleManager.singleton.enemyTeam.teamMembers) {
                AITileAgent enemyAI = enemy as AITileAgent;
                if (enemyAI == null) {
                    continue;
                }
                enemyAI.bossAI = this;
            }
            if (BattleManager.singleton.enemyTeam.teamMembers[0] != bossAI) {
                TileAgent firstMember = BattleManager.singleton.enemyTeam.teamMembers[0];
                for (int i = 0; i < BattleManager.singleton.enemyTeam.teamMembers.Count; i++) {
                    if (BattleManager.singleton.enemyTeam.teamMembers[i] == bossAI) {
                        BattleManager.singleton.enemyTeam.teamMembers[0] = bossAI;
                        BattleManager.singleton.enemyTeam.teamMembers[i] = firstMember;
                        break;
                    }
                }
            }
            _firstLateUpdate = false;
        }
    }

    public override void Kill () {
        TransitionStatHandler.StartStats();
        SceneTransitionHandler.singleton.LoadNextLevel();
    }

}
