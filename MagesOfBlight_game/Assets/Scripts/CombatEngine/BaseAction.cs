using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BaseAction : ScriptableObject {
	
	public Color normalColor;
	public Color highlightedColor;
	public Color pressedColor;
	public Color disabledColor;
	public string actionName;

	public virtual List<HexNode> CheckTiles () {
		return new List<HexNode>();
	}

	public virtual void DoAction () {

	}

}
