using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class AgentActions : MonoBehaviour {

	[System.Serializable]
	public class ActionData {
		public BaseAction action;
		public bool known;
		public bool usable;
		public Button button;
	}

    public ActionData blockAction;
    public ActionData counterAction;

	//[SerializeField]
	public List<ActionData> proactiveActions;

    void Awake() {
        InitActions();
    }

	void Start () {
		
	}

	void Update () {
		
	}

    private void InitActions() {
        if (blockAction.action != null) {
            blockAction.action.Init();
        }
        if (counterAction.action != null) {
            counterAction.action.Init();
        }

        foreach (ActionData data in proactiveActions) {
            data.action.Init();
        }
    }
}
