using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Class takes Input Axes assigned by the player, assigns them to a data structure (InputAxis) with
/// custom input handling techniques, and maps those values into a dictionary using an enum. All input
/// keys can be set up in the Inspector, but must 
/// </summary>

public class InputHandler : MonoBehaviour {


    public enum AxisKey {
        Select = 0,
        Move = 1,
        Confirm = 2,
        Cancel = 3,

        SelectionX = 4,
        SelectionY = 5,

        MovementX = 6,
        MovementY = 7,

        Zoom = 8,
    }


    //DATA STRUCTURE TO HOLD THE AXIS AND PERFORM CUSTOM INPUT HANDLING ON IT'S OUTPUT
    [System.Serializable]
    public class InputAxis {
        private float _axisValue;
        public float axisValue { get { return _axisValue; } }

        public string axisName;

        public bool isJoystick = false;

        [Tooltip("Trigger like in the Animator, not xbox controller")]
        public bool isTrigger = false;
        private bool _triggered = false;
        public bool snap = false;
        public bool negate = false;

        //public AnimationCurve valueRamp = AnimationCurve.Linear(0.0f, 0.0f, 1.0f, 1.0f);

        public void UpdateAxisValue() {
            _axisValue = GetAxis();
        }

        private float GetAxis() {
            
            float retVal = Input.GetAxis(axisName);

            retVal = TriggerAxisProtocol(retVal);
            retVal = SnapAxisProtocol(retVal);
            retVal = NegateAxisProtocol(retVal);

            return retVal;
            
            /*
            //TRIGGER
            if (isTrigger) {

                //return HandleTriggerAxis();
                return TriggerAxisProtocol(Input.GetAxis(axisName));
            }
            //REGULAR
            else {
                return HandleAxis();
            }
            */
        }

        private float TriggerAxisProtocol(float axisValue) {
            if (isTrigger) {
                //reset trigger if not using button
                if (axisValue == 0.0f) {
                    _triggered = false;
                }

                else if (_triggered == false) {
                    _triggered = true;


                    return axisValue;
                }

                //was not untriggered, return as if it wasn't be used
                return 0.0f;
            }
            else {
                return axisValue;
            }
        }

        private float NegateAxisProtocol(float axisValue) {
            return negate == false ? axisValue : -axisValue;
        }

        
        private float SnapAxisProtocol(float input) {
            if (snap) {
                return input != 0.0f ? 1.0f : 0.0f;
            }
            else {
                return input;
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
                    Debug.LogErrorFormat("Failed to add {0} to controlsDict. More than one instance of its axis binding string exists.", cB.controlKey);
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

            //return controlsDict[keyName].GetAxis();
            return controlsDict[keyName].axisValue;
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
        RefreshInputs();

        //Debug.Log(Input.GetAxis("ViewY"));
        //Debug.Log(controls.GetAxis(AxisKey.SelectionX) + " | " + controls.GetAxis(AxisKey.SelectionY));
        //if (controls.GetAxis(AxisKey.SelectionX) > 1.0f) { Debug.Log("boom"); }
        /*
        if (controls.GetAxis(AxisKey.Select) != 0.0f) {
            Debug.Log("boom");
        }
        */
    }

    void RefreshInputs() {
        foreach (KeyValuePair<AxisKey, InputAxis> kvp in controls.controlsDict) {
            kvp.Value.UpdateAxisValue();
        }
    }

}
