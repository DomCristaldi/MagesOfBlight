using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using JBirdEngine;

public class BaseAction : ScriptableObject {

    public AgentAnimController.AnimationInfo animInfo;

	protected static float targetPrecision = 0.1f;

	public TileAgent agent;

	public Color normalColor;
	public Color highlightedColor;
	public Color pressedColor;
	public Color disabledColor;
	public string actionName;

    public float damage;
	public float blightRequired;
	public float blightGiven;

	float range = Mathf.Infinity;

    public float waitTimeAfterHit;

	public enum TileCheckFlags {
		none = 0,
		unoccupied = 1,
		occupied = 2,
		agentOccupied = 4,
	}

	public bool checkThroughOccupied = false;
	public TileCheckFlags tileCheckFlags;
	public int checkDistance = int.MaxValue;
    public bool includeSelf = false;

	public bool canCounter;
	public bool canBlock;

    public virtual List<HexNode> CheckTiles () {
		return new List<HexNode>();
	}

	public virtual void Init () {

	}

	public virtual bool DoAction () {
		Init();
		return true;
	}

	protected virtual bool ActionSuccess () {
		Init();
		agent.stats.AddBlight(blightGiven);
		return true;
	}

}
