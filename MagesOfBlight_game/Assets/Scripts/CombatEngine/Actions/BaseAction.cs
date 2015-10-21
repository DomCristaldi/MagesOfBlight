using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using JBirdEngine;

public class BaseAction : ScriptableObject {

	protected static float targetPrecision = 0.1f;

	public Color normalColor;
	public Color highlightedColor;
	public Color pressedColor;
	public Color disabledColor;
	public string actionName;

	float range = Mathf.Infinity;

	public enum TileCheckFlags {
		none = 0,
		unoccupied = 1,
		occupied = 2,
		agentOccupied = 4,
	}

	public bool checkThroughOccupied = false;
	public TileCheckFlags tileCheckFlags;
	public int checkDistance = int.MaxValue;

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
		return true;
	}

}
