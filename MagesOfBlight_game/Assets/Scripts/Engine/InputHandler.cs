using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Class takes Input Axes assigned by the player, assigns them to a data structure (InputAxis) with
/// custom input handling techniques, and maps those values into a dictionary using an enum. All input
/// keys can be set up in the Inspector, but must 
/// </summary>

public class InputHandler : MonoBehaviour {


    public enum AxisKey {
        Select,
        Confirm,
        Cancel,
    }


    //DATA STRUCTURE TO HOLD THE AXIS AND PERFORM CUSTOM INPUT HANDLING ON IT'S OUTPUT
    [System.Serializable]
    public class InputAxis {
        public string axisName;
        [Tooltip("Trigger like in the Animator, not xbox controller")]
        public bool isTrigger = false;
        private bool _triggered = false;
        public bool snap = false;

        public float GetAxis() {
            //TRIGGER
            if (isTrigger) {

                return HandleTriggerAxis();
            }
            //REGULAR
            else {
                return HandleAxis();
            }
        }

        private float HandleAxis() {
            if (snap) {
                return Input.GetAxis(axisName);
            }
            else {
                return Input.GetAxisRaw(axisName);
            }
        }

        private float HandleTriggerAxis() {

            //reset trigger if not using button
            if (Input.GetAxis(axisName) == 0.0f) {
                _triggered = false;
            }

            else if (_triggered == false) {
                _triggered = true;


                return Input.GetAxisRaw(axisName);
            }

            //was not untriggered, return as if it wasn't be used
            return 0.0f;
        }

    }

    //BINDS AN AXIS AND CONTROL VALUE, USED FOR GETTING InputAxis PROPERLY INTO A DICTIONARY
    [System.Serializable]
    public class ControlBinding {
        //public string controlKey;
        public AxisKey controlKey;
        public InputAxis controlValue;
    }

    //DATA STRUCTURE FOR ACCESSING ALL InputAxes IN ONE CONVENIENT PLACE, ALLOWS FOR PORTABILITY OF ALL CONTROLS
    [System.Serializable]
    public class ControlsLibrary {
        //public List<InputAxis> controlsList;
        public List<ControlBinding> controlMapping;
        public Dictionary<AxisKey, InputAxis> controlsDict;

    //ADDS ALL CURRENTLY SETUP CONTROL MAPPINGS TO A DICTIONARY FOR FAST AND INTUITIVE LOOKUP
        public void UpdateControlDictionary() {
            controlsDict = new Dictionary<AxisKey, InputAxis>();
            foreach (ControlBinding cB in controlMapping) {
                if (!controlsDict.ContainsKey(cB.controlKey)) {
                    controlsDict.Add(cB.controlKey, cB.controlValue);
                }
                else {//Throw error if we try to add two instances of the same axis
                    Debug.LogError("Failed to add" + cB.controlKey + " to controlsDict. More than one instance of its axis binding string exists.");
                }
            }
        }

        public float GetAxis(AxisKey keyName) {
            if (controlsDict == null || controlsDict.Count == 0) {
                UpdateControlDictionary();
                if (controlsDict.Count == 0) {
                    Debug.LogWarning("No Input Axes set up. Returning 0.0f for all control queries");
                    return 0.0f;
                }
            }

            return controlsDict[keyName].GetAxis();
        }

    }


    public static InputHandler singleton;


    public ControlsLibrary controls;

    void Awake() {
        if (singleton == null) {
            singleton = this;
        }

        controls.UpdateControlDictionary();
    }

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        //Debug.Log(Input.GetAxis("ViewY"));
    }

}
