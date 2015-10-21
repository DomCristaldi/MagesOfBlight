using UnityEngine;
using System.Collections.Generic;

[AddComponentMenu("Scripts/BattleEngine/Tiles/Entities/TileAgent")]
//[RequireComponent(typeof(Motor_RigidBody))]
[RequireComponent(typeof(Motor_Tile))]
public class TileAgent : TileEntity {

    public Motor_RigidBody motor;
    public Motor_Tile tileMotor;

    public enum Team {
        player,
        enemy,
    }

    public Team agentTeam;

    public float moveSpeed = 1.0f;

	// Use this for initialization
	protected override void Start () {
        base.Start();

        motor = GetComponent<Motor_RigidBody>();
        tileMotor = GetComponent<Motor_Tile>();

        RegisterWithTeam();

	}
	
	// Update is called once per frame
	protected override void Update () {
        base.Update();
	}

    public void FollowPath(List<Vector3> pathToFollow) {

    }

    private void RegisterWithTeam() {
        switch (agentTeam) {
            case Team.player:
                battleManRef.playerTeam.AddToTeam(this);
                break;
            case Team.enemy:
                battleManRef.enemyTeam.AddToTeam(this);
                break;
        }
    }

}
