﻿using UnityEngine;
using System;
using System.Collections.Generic;
using System.Linq;//Linq is love, Linq is life

[AddComponentMenu("Scripts/BattleEngine/Tiles/Managers/BattleManager")]
public class BattleManager : MonoBehaviour {

    [System.Serializable]
    public class BattleTeam {
        /*
        [System.Serializable]
        public class MemberInfo {
            public TileAgent agent;
            public bool hasTurn = true;

            public MemberInfo(TileAgent agent, bool hasTurn = true) {
                this.agent = agent;
                this.hasTurn = hasTurn;
            }
        }
        */

        //public CombatTeam teamType;

        //public List<MemberInfo> teamMembers;
        public List<TileAgent> teamMembers;

        public float numberOfTeamMembers {
            get { return teamMembers.Count; }
        }

        public BattleTeam(params TileAgent[] membersToAdd) {
            if (membersToAdd.Length > 0) {
                teamMembers = membersToAdd.ToList<TileAgent>();
                /*
                foreach (TileAgent agent in membersToAdd) {
                    teamMembers.Add(new MemberInfo(agent));
                }
                */
            }
            else {
                teamMembers = new List<TileAgent>();
                //teamMembers = new List<MemberInfo>();
            }
        }

        public void AddToTeam(TileAgent agent) {
            if (teamMembers == null) {
                teamMembers = new List<TileAgent>();
                //teamMembers = new List<MemberInfo>();
            }
            teamMembers.Add(agent);
            //teamMembers.Add(new MemberInfo(agent));
        }

        public bool RemoveFromTeam(TileAgent agent) {
            
            if (teamMembers.Contains(agent)) {
                teamMembers.Remove(agent);
				return true;
            }
			return false;
            
            
            //teamMembers.RemoveAll(x => x.agent == agent);//remove all instances of MemberInfos with the supplied Agent
            
        }

        /*
        public List<TileAgent> GetTeamMembers() {
            return teamMembers.Select<MemberInfo, TileAgent>(x => x.agent).ToList<TileAgent>();
        }
        */

        //CHECK IF ALL TEAM MEMBERS HAVE COMPLETED THIER TURN
        public bool TurnComplete() {
            if (teamMembers.Count(x => x.canPerformTurn == false) == teamMembers.Count) {
                return true;
            }
            return false;

        }

        public void RefreshTeam() {
            foreach (TileAgent agent in teamMembers) {
                agent.RefreshTurn();
				agent.stats.RecoverBlight();
            }
        }

        public void KillTeam() {
            foreach (TileAgent agent in teamMembers) {
                agent.GetComponent<BaseStats>().currentHealth = 0.0f;
            }
        }

    }

    public enum CombatTeam {
        Player = 0,
        Enemy = 1,
    }

    public enum CombatPhase {
        None = 0,
        EnterCombat = 1,
        ExitCombat = 2,
        TileSelection = 3,
        ActionSelection = 4,
        TargetSelection = 5,
        ConfirmAction = 6,
        PerformAction = 7,
        Proactive = 8,
        Reactive = 9,
        CheckTeam = 10,
        AISelection = 11,
        AILogic = 12,
        Dialogue = 13,
    }


    public static BattleManager singleton = null;


    [Header("Setup")]

	public string firstSceneName;

    public Camera battleCam;//refrence to the camera we use for selection
    public Transform battleCamTf;//cached transform reference for speed of access

    public LayerMask tileLayer = 8;
	


    //[Space]
    [Header("Teams")]

    //public List<BattleTeam> teams;
    public BattleTeam playerTeam;
    public BattleTeam enemyTeam;


    private BaseCombatState currentBattleState;

    //[Space]
    [Header("Battle Info")]


    public CombatTeam curCombatTeam;
    public CombatPhase curCombatPhase;
    public Stack<CombatPhase> prevCombatPhaseStack;

    public HexNode hoveredTile;
    public HexNode selectedTile;
    public HexNode targetTile;
    public List<HexNode> checkedTiles;

    public TileAgent selectedAgent;
	public BaseAction selectedAction;

    public DoNothingAction defaultAction;

    //public bool reactionWindowOpen;

    //public List<TileAgent> agentList;


    void Awake() {
        if (singleton == null) {
            singleton = this;
        }

        checkedTiles = new List<HexNode>();

        prevCombatPhaseStack = new Stack<CombatPhase>();

        playerTeam = new BattleTeam();
        enemyTeam = new BattleTeam();

    }

	// Use this for initialization
	void Start () {
	    if (battleCam == null) {//set battleCam if none was defined
            battleCam = Camera.main;
        }
        battleCamTf = battleCam.GetComponent<Transform>();

        //GameManager.singleton.battleMan = singleton;

        ChangeCombatState(CombatPhase.EnterCombat);//TESTING
    }

    // Update is called once per frame
    void Update () {
        currentBattleState.UpdateState();


        /*DEBUG FOR SHOWING UNDO STACK
        string debugString = prevCombatPhaseStack.Count().ToString() + "\n";
        foreach (CombatPhase phase in prevCombatPhaseStack) {
            debugString += phase.ToString() + "\n";
        }
        print(debugString);
        */

        CheckInputs();

	}

    private void CheckInputs() {
        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.KillAllPlayers) != 0.0f) {
            KillTeam(CombatTeam.Player);
        }

        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.KillAllEnemies) != 0.0f) {
            KillTeam(CombatTeam.Enemy);
        }
    }

    public void SetHoveredTile(HexNode tile) {

        if (!currentBattleState.canHoverGrid) {//we can't hover over a tile in this state, prevent it from happening
            if (hoveredTile != null) {//clean up any hovered tile if we need to
                hoveredTile.SetNormalMat();
                hoveredTile = null;
            }
            return;
        }

        if (hoveredTile != tile) {//swap out the currently hovered tile
            if (hoveredTile != null) {
                hoveredTile.SetNormalMat();
            }

            hoveredTile = tile;//set parameters of hovered tile
            hoveredTile.SetHoverMat();
        }
    }


    public BattleTeam GetCurrentTeam() {//***TODO: reimplement with more generic team handling (no distinct varialbes for playerTeam and enemyTeam)
        switch (curCombatTeam) {
            case CombatTeam.Player:
                return playerTeam;
            case CombatTeam.Enemy:
                return enemyTeam;
            default:
                throw new Exception("Switch Case is totally broken what the hell?!");
        }
    }

    //RESET THE CURRENT TEAM SO THEY CAN PERFORM TURNS
    public void RefreshCurrentTeam() {
        switch (curCombatTeam) {
            case CombatTeam.Player:
                playerTeam.RefreshTeam();
                return;
            case CombatTeam.Enemy:
                enemyTeam.RefreshTeam();
                return;
        }
    }

    public void ChangeActingTeam(CombatTeam team) {
        curCombatTeam = team;
    }


    public void ClearSelectedAction() {
        selectedAction = null;
    }

    public void PushPreviousCombatPhase(CombatPhase prevPhase) {    
        prevCombatPhaseStack.Push(prevPhase);
    }

    public CombatPhase PopPreviousCombatPhase() {
        return prevCombatPhaseStack.Pop();
    }

    public void RefreshPrevPhaseStack() {
        prevCombatPhaseStack.Clear();
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
    public void ChangeCombatState(CombatPhase state, CombatPhase nextState = CombatPhase.None) {
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
            case CombatPhase.AISelection://SELECT AI AGENT
                currentBattleState = new AISelectionState(state);
                break;
            case CombatPhase.AILogic://PERFORM AI LOGIC
                currentBattleState = new AILogicState(state);
                break;
            case CombatPhase.Dialogue://HANDLE DIALOGUE UI
                currentBattleState = new DialogueState(state, nextState);
                break;

            default:
                Debug.LogError("BattleManager: Undefined state transition!");
                break;
        }

        currentBattleState.InitState();//make sure we initialize the state


        curCombatPhase = state;

    }

    public void OpenReactionWindow() {

    }

    public void CloseReactionWindow() {

    }

    public void DrawPath(List<HexNode> pathToDraw, Color color) {
        if (pathToDraw == null) { return; } 

        for (int i = 0; i < pathToDraw.Count - 1; ++i) {
            Debug.DrawLine(pathToDraw[i].transform.position,
                           pathToDraw[i + 1].transform.position,
                           color);
        }

    }

    public void ClearFrameInfo() {

        selectedTile = null;
        targetTile = null;
        selectedAgent = null;
        selectedAction = null;
    }


    public void ConfirmActionSelection() {
        if (curCombatPhase == CombatPhase.TargetSelection
         && selectedAgent != null
         && selectedAction != null
         && targetTile != null)
        {
            ChangeCombatState(CombatPhase.PerformAction);
        }
    }

	public void KillAgent (TileAgent agent) {
		if (enemyTeam.RemoveFromTeam(agent)) {
			//Debug.Log("An enemy has been slain!");
			agent.Kill();

            /*
            if (enemyTeam.numberOfTeamMembers == 0) {
                SceneTransitionHandler.singleton.LoadNextLevel();
            }
            */
		}
		if (playerTeam.RemoveFromTeam(agent)) {
			//Debug.Log("Game over, man! It's game over!");

            //SceneTransitionHandler.singleton.ReloadLevel();

			//Application.LoadLevel(firstSceneName);
		}
	}

    public void KillTeam(CombatTeam team) {
        switch (team) {

            case CombatTeam.Player:

                playerTeam.KillTeam();

                /*
                foreach (TileAgent agent in playerTeam.teamMembers) {
                    agent.GetComponent<BaseStats>().currentHealth = 0.0f;
                }
                */
                
                break;

            case CombatTeam.Enemy:
                enemyTeam.KillTeam();
                /*
                foreach (TileAgent agent in enemyTeam.teamMembers) {
                    agent.GetComponent<BaseStats>().currentHealth = 0.0f;
                }
                */
                break;
        }

        ChangeCombatState(CombatPhase.ExitCombat);
    }

}
