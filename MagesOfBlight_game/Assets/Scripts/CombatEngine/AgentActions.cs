using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AgentActions : MonoBehaviour {

	[System.Serializable]
	public class ActionData {
		public BaseAction action;
		public bool known;
		public bool usable;
	}

	[SerializeField]
	public List<ActionData> actionDataList;

	void Start () {
		
	}

	void Update () {
		
	}
}
