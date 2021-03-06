using UnityEngine;
using System.Collections.Generic;

[AddComponentMenu("Scripts/BattleEngine/Tiles/Entities/TileAgent")]
//[RequireComponent(typeof(Motor_RigidBody))]
[RequireComponent(typeof(TileMotor))]
[RequireComponent(typeof(BaseStats))]
[RequireComponent(typeof(AgentActions))]
public class TileAgent : TileEntity {

    //public RigidBodyMotor motor;
    //[HideInInspector]
    private TileMotor _motor;
    public TileMotor motor {
        get { return _motor; }
    }

	private BaseStats _stats;
	public BaseStats stats {
		get { return _stats; }
	}

	public Canvas agentCanvas;
	public AgentActions agentActions;

    private ModelRotationController _modelRotControl;

	public int moveSteps;
	public int maxMoveSteps;
    MoveAction moveAction;

    public bool hasTurn = true;
    public bool canPerformTurn {//checks all possible conditions that would disallow a turn
        get {
            if (hasTurn) {
                return true;
            }
            return false;
        }
    }

    /*
    public enum Team {
        player,
        enemy,
    }

    public Team agentTeam;
    */
    public BattleManager.CombatTeam team;

    //public float moveSpeed = 1.0f;

    public Vector3 defaultModelLookDirec = -Vector3.forward;


    protected override void Awake() {
        _motor = GetComponent<TileMotor>();
        _modelRotControl = GetComponent<ModelRotationController>();
		_stats = GetComponent<BaseStats>();

        //Ensure model we have is synchronized
        if (_modelRotControl.modelTf == null && model != null) {//assign to rotation controller
            _modelRotControl.modelTf = model.transform;
        }
        else if (model == null && _modelRotControl.modelTf != null) {//get model from rotation controller
            model = _modelRotControl.gameObject;
        }
        RefreshTurn();
        base.Awake();

    }

	protected override void Start () {
        base.Start();

        RegisterWithTeam();

        _modelRotControl.SetDesiredLookDirec(-Vector3.forward);

        agentActions = GetComponent<AgentActions>();

        foreach (AgentActions.ActionData actionData in agentActions.proactiveActions) {
            if (actionData.action as MoveAction != null) {
                moveAction = actionData.action as MoveAction;
            }
        }

    }
	
	protected override void Update () {
        base.Update();
		CheckIfKill();
        //MovementProtocol();
        LookProtocol();
        if (moveAction != null) {
            moveAction.checkDistance = moveSteps;
        }
	}

	protected virtual void CheckIfKill () {
		if (stats.currentHealth <= 0f) {
			BattleManager.singleton.KillAgent(this);
		}
        else if (team == BattleManager.CombatTeam.Player && stats.currentBlight >= 100f) {
            BattleManager.singleton.KillAgent(this);
        }
	}

    public void FollowPath(List<Vector3> pathToFollow) {

    }

    public void RegisterWithTeam() {
        switch (team) {
            case BattleManager.CombatTeam.Player:
                battleManRef.playerTeam.AddToTeam(this);
                break;
            case BattleManager.CombatTeam.Enemy:
                battleManRef.enemyTeam.AddToTeam(this);
                break;
        }
    }

    public void UseTurn() {
        hasTurn = false;
    }

    public virtual void RefreshTurn() {
        hasTurn = true;
		moveSteps = maxMoveSteps;
		motor.tilesMoved = 0;
        motor.availableMoveSteps = maxMoveSteps;
    }

    protected void LookProtocol() {

        Debug.DrawRay(transform.position, _motor.desiredDirec * 5.0f, Color.black);

        if (_motor.isMoving) {
            //Debug.Log("moving");

            _modelRotControl.SetDesiredLookDirec(_motor.desiredDirec.normalized);
        }
        else {
            _modelRotControl.SetDesiredLookDirec(-Vector3.forward);
        }

    }

	public virtual void Kill () {
		Destroy(gameObject);
	}

    public virtual void Heal (float amount) {
        foreach (TileAgent agent in BattleManager.singleton.enemyTeam.teamMembers) {
            AITileAgent agentAI = agent as AITileAgent;
            if (agentAI != null && agentAI.aggroTarget == this) {
                agentAI.aggroTarget = BattleManager.singleton.selectedAgent;
            }
        }
        stats.Heal(amount);
    }

}
