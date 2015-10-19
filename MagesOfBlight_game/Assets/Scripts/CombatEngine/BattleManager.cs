using UnityEngine;
using System.Collections.Generic;
using System.Linq;

[AddComponentMenu("Scripts/BattleEngine/Tiles/Managers/BattleManager")]
public class BattleManager : MonoBehaviour {

    [System.Serializable]
    public class BattleTeam {
        public List<TileAgent> teamMembers;

        public BattleTeam(params TileAgent[] membersToAdd) {
            if (membersToAdd.Length > 0) {
                teamMembers = membersToAdd.ToList<TileAgent>();
            }
            else {
                teamMembers = new List<TileAgent>();
            }
        }

        public void AddToTeam(TileAgent agent) {
            if (teamMembers == null) {
                teamMembers = new List<TileAgent>();
            }
            teamMembers.Add(agent);
        }

        public void RemoveFromTeam(TileAgent agent) {
            if (teamMembers.Contains(agent)) {
                teamMembers.Remove(agent);
            }
        }
    }

    public enum CombatTurn {
        Player,
        Enemy,
    }

    public enum CombatPhase {
        TileSelection,
        ActionSelection,
        TargetSelection,
        ConfirmAction,
        Proactive,
        Reactive,
    }


    public static BattleManager singleton = null;

    //public List<BattleTeam> teams;
    public BattleTeam playerTeam;

    //public delegate void CombatAction();
    //public CombatAction currentCombatAction;

    /*
    private delegate void BattleState();
    private BattleState currentBattleState;
    */
    private BaseCombatState currentBattleState;

    public Camera battleCam;//refrence to the camera we use for selection
    public Transform battleCamTf;//cached transform reference for speed of access

    public LayerMask tileLayer = 8;


    public bool currentlyInCombat = false;

    public CombatTurn curCombatTurn;
    public CombatPhase curCombatPhase;

    public TileInfo hoveredTile;
    public TileInfo selectedTile;
    public TileInfo targetTile;

	public BaseAction selectedAction;

    void Awake() {
        if (singleton == null) {
            singleton = this;
        }

        //currentBattleState = new TileSelectionState();
        //currentBattleState.InitState();

        //currentBattleState = HandleSelection;

    }

	// Use this for initialization
	void Start () {
	    if (battleCam == null) {//set battleCam if none was defined
            battleCam = Camera.main;
        }
        battleCamTf = battleCam.GetComponent<Transform>();

        ChangeCombatState(CombatPhase.TileSelection);

    }

    // Update is called once per frame
    void Update () {
        currentBattleState.UpdateState();

        //currentBattleState();

        //HandleSelection();
	}

    public void SwitchCombatTurn(CombatTurn turn) {
        curCombatTurn = turn;
    }


    private void SwitchToSelectionMode() {
        //StartCoroutine(HandleSelection());
    }

    private void HandleCombatTurn() {

    }

    /*
    private void HandleSelection() {

        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Select) != 0.0f) { 
            TileInfo hitTile;

            if (TileRaycast(//battleCamTf.position,
                            battleCam.ScreenToWorldPoint(Input.mousePosition),//***CHANGE TO USING INPUT AXIS FROM INPUT HANDLER***
                            battleCamTf.rotation * Vector3.forward,
                            out hitTile,
                            tileLayer)) 

            {
                selectedTile = hitTile;
            }

        }

        //yield break;
    }
    */

//RAYCAST ON TILE LAYER AND RETURN THE TILE THAT WAS HIT, NULL IF NONE WAS HIT
    public bool TileRaycast(Vector3 origin, Vector3 direction, out TileInfo tInfo) {

        RaycastHit hit;
        if (Physics.Raycast(origin, direction, out hit, Mathf.Infinity, tileLayer)) {

            tInfo = hit.collider.gameObject.GetComponent<TileInfo>();
            return true;
        }

        tInfo = null;
        return false;
    }

//STATIC
//RAYCAST ON TILE LAYER AND RETURN THE TILE THAT WAS HIT, NULL IF NONE WAS HIT
    public static bool TileRaycast(Vector3 origin, Vector3 direction, out TileInfo tInfo, LayerMask layer) {

        RaycastHit hit;
        if (Physics.Raycast(origin, direction, out hit, Mathf.Infinity, layer)) {

            tInfo = hit.collider.gameObject.GetComponent<TileInfo>();
            return true;
        }

        tInfo = null;
        return false;
    }


    public void SwitchCombatPhase(CombatPhase phase) {
        curCombatPhase = phase;

        
    }


    //END CURRENT STATE, DETERMINE NEXT STATE, AND INITIALIZE IT AFTER CHOSEN
    public void ChangeCombatState(CombatPhase state) {
        if (currentBattleState != null) {
            currentBattleState.EndState();
        }

        switch (state) {
            case CombatPhase.TileSelection://TILE SELECTION
                currentBattleState = new TileSelectionState();
                break;
            case CombatPhase.ActionSelection://ACTION SELECTION
                currentBattleState = new ActionSelectionState();
                break;
            case CombatPhase.TargetSelection://TARGET SELECTION
                currentBattleState = new TargetSelectinState();
                break;
            case CombatPhase.ConfirmAction:
                currentBattleState = new ConfirmActionState();
                break;
        }

        curCombatPhase = state;

        currentBattleState.InitState();

    }
    
    public void DrawPath(List<HexNode> pathToDraw, Color color) {
        for (int i = 0; i < pathToDraw.Count - 1; ++i) {
            Debug.DrawLine(pathToDraw[i].transform.position,
                           pathToDraw[i + 1].transform.position,
                           color);
        }

    }

}
