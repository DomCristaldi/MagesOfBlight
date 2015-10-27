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
        None,
        EnterCombat,
        ExitCombat,
        TileSelection,
        ActionSelection,
        TargetSelection,
        ConfirmAction,
        PerformAction,
        Proactive,
        Reactive,
        CheckTeam,
    }


    public static BattleManager singleton = null;


    [Header("Setup")]

    public Camera battleCam;//refrence to the camera we use for selection
    public Transform battleCamTf;//cached transform reference for speed of access

    public LayerMask tileLayer = 8;





    [Space]
    [Header("Teams")]

    //public List<BattleTeam> teams;
    public BattleTeam playerTeam;
    public BattleTeam enemyTeam;


    private BaseCombatState currentBattleState;

    [Space]
    [Header("Battle Info")]


    public CombatTurn curCombatTurn;
    public CombatPhase curCombatPhase;
    public Stack<CombatPhase> prevCombatPhaseStack;

    public HexNode hoveredTile;
    public HexNode selectedTile;
    public HexNode targetTile;

    public TileAgent selectedAgent;
	public BaseAction selectedAction;

    //public List<TileAgent> agentList;


    void Awake() {
        if (singleton == null) {
            singleton = this;
        }

        prevCombatPhaseStack = new Stack<CombatPhase>();

        playerTeam = new BattleTeam();
        enemyTeam = new BattleTeam();


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

        ChangeCombatState(CombatPhase.EnterCombat);
        //currentBattleState.InitState(CombatPhase.None);
    }

    // Update is called once per frame
    void Update () {
        currentBattleState.UpdateState();

        //currentBattleState();

        //HandleSelection();

        
        string debugString = prevCombatPhaseStack.Count().ToString() + "\n";
        foreach (CombatPhase phase in prevCombatPhaseStack) {
            debugString += phase.ToString() + "\n";
        }
        print(debugString);
        
	}

    public void PushPreviousCombatPhase(CombatPhase prevPhase) {
        
        /*
        //prevent adding states that shouldn't be undo-able
        switch (prevPhase) {//***TODO: use enum flags ***
            case CombatPhase.None:
                return;
            case CombatPhase.EnterCombat:
                return;
            case CombatPhase.ExitCombat:
                return;
            case CombatPhase.PerformAction:
                return;
            case CombatPhase.Proactive:
                return;
            case CombatPhase.Reactive:
                return;
            case CombatPhase.CheckTeam:
                return;
        }
        */

        prevCombatPhaseStack.Push(prevPhase);
    }

    public CombatPhase PopPreviousCombatPhase() {
        return prevCombatPhaseStack.Pop();
    }

    public void RefreshPrevPhaseStack() {
        prevCombatPhaseStack.Clear();
    }

    public void SwitchCombatTurn(CombatTurn turn) {
        curCombatTurn = turn;
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
    public bool TileRaycast(Vector3 origin, Vector3 direction, out HexNode tInfo) {

        RaycastHit hit;
        if (Physics.Raycast(origin, direction, out hit, Mathf.Infinity, tileLayer)) {

            tInfo = hit.collider.gameObject.GetComponent<HexNode>();
            return true;
        }

        tInfo = null;
        return false;
    }

//STATIC
//RAYCAST ON TILE LAYER AND RETURN THE TILE THAT WAS HIT, NULL IF NONE WAS HIT
    public static bool TileRaycast(Vector3 origin, Vector3 direction, out HexNode tInfo, LayerMask layer) {

        RaycastHit hit;
        if (Physics.Raycast(origin, direction, out hit, Mathf.Infinity, layer)) {

            tInfo = hit.collider.gameObject.GetComponent<HexNode>();
            return true;
        }

        tInfo = null;
        return false;
    }

    /*
    public void SwitchCombatPhase(CombatPhase phase) {
        curCombatPhase = phase;
    }
    */

    //END CURRENT STATE, DETERMINE NEXT STATE, AND INITIALIZE IT AFTER CHOSEN
    public void ChangeCombatState(CombatPhase state, bool logPrev = true) {
        if (currentBattleState != null) {
            currentBattleState.EndState();
        }

        switch (state) {
            case CombatPhase.EnterCombat://ENTER COMBAT (bring up hex grid, place teams)
                currentBattleState = new EnterCombatState(state);
                break;
            case CombatPhase.ExitCombat://EXIT COMBAT (remove hex grid)
                currentBattleState = new ExitCombatState(state);
                break;
            case CombatPhase.TileSelection://TILE SELECTION (select agent to perform actions with)
                currentBattleState = new TileSelectionState(state);//UNDOABLE
                break;
            case CombatPhase.ActionSelection://ACTION SELECTION (enable Actions menu)
                currentBattleState = new ActionSelectionState(state);//UNDOABLE
                break;
            case CombatPhase.TargetSelection://TARGET SELECTION (select a target tile for the action)
                currentBattleState = new TargetSelectionState(state);//UNDOABLE
                break;
            case CombatPhase.ConfirmAction://ACTION CONFIRMATION (final confirmation, may change to something available to all Combat States)
                currentBattleState = new ConfirmActionState(state);//UNDOABLE
                break;
            case CombatPhase.PerformAction://PERFORM ACTION (no user control)
                currentBattleState = new PerformActionState(state);
                break;
            case CombatPhase.CheckTeam://CHECK TEAM (switch which team is going based on if all team members have gone)
                currentBattleState = new CheckTeamState(state);
                break;
        }

        //at this time, curCombatPhase is now the previous combat phase
        currentBattleState.InitState(curCombatPhase, logPrev);//initialize the next state with a reference to the previous state


        curCombatPhase = state;

    }

    public void DrawPath(List<HexNode> pathToDraw, Color color) {
        for (int i = 0; i < pathToDraw.Count - 1; ++i) {
            Debug.DrawLine(pathToDraw[i].transform.position,
                           pathToDraw[i + 1].transform.position,
                           color);
        }

    }

    public void ClearFrameInfo() {
        //targetTile.entityOnTile = selectedTile.entityOnTile;//this is fuckgin disgusting
        //selectedTile.entityOnTile = null;//***COME BACK AND FIX THIS***

        selectedTile = null;
        targetTile = null;
        selectedAgent = null;
        selectedAction = null;
    }



}
