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

    public ActionData blockAction;
    public ActionData counterAction;

	//[SerializeField]
	public List<ActionData> proactiveActions;


	void Start () {
		
	}

	void Update () {
		
	}
}
