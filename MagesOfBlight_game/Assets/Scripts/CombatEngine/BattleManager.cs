using UnityEngine;
using System.Collections;

[AddComponentMenu("Scripts/BattleEngine/Tiles/Managers/BattleManager")]
public class BattleManager : MonoBehaviour {

    public enum CombatTurn {
        Player,
        Enemy,
    }

    public enum CombatPhase {
        Selection,
        Proactive,
        Reactive,
    }



    public static BattleManager singleton = null;

    //private delegate currentActions;

    public Camera battleCam;//refrence to the camera we use for selection
    private Transform battleCamTf;//cached transform reference for speed of access

    public LayerMask tileLayer = 8;


    public bool currentlyInCombat = false;

    public CombatTurn curCombatTurn;
    public CombatPhase curCombatPhase;

    public TileInfo selectedTile;

    void Awake() {
        if (singleton == null) {
            singleton = this;
        }
    }

	// Use this for initialization
	void Start () {
	    if (battleCam == null) {//set battleCam if none was defined
            battleCam = Camera.main;
        }
        battleCamTf = battleCam.GetComponent<Transform>();
	}
	
	// Update is called once per frame
	void Update () {
        HandleSelection();
	}

    public void SwitchCombatTurn(CombatTurn turn) {
        curCombatTurn = turn;
    }

    public void SwitchCombatPhase(CombatPhase phase) {
        curCombatPhase = phase;
    }

    private void SwitchToSelectionMode() {
        //StartCoroutine(HandleSelection());
    }

    private void HandleCombatTurn() {

    }

    private void HandleSelection() {

        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Select) != 0.0f) { 
            TileInfo hitTile;

            if (TileRaycast(//battleCamTf.position,
                            battleCam.ScreenToWorldPoint(Input.mousePosition),//***CHANGE TO USING INPUT AXIS FROM INPUT HANDLER***
                            battleCamTf.rotation * Vector3.forward,
                            out hitTile)) 

            {
                selectedTile = hitTile;
            }

        }

        //yield break;
    }

//RAYCAST ON TILE LAYER AND RETURN THE TILE THAT WAS HIT, NULL IF NONE WAS HIT
    public bool TileRaycast(Vector3 origin, Vector3 direction, out TileInfo tInfo) {

        RaycastHit hit;
        if (Physics.Raycast(origin, direction, out hit)) {

            tInfo = hit.collider.gameObject.GetComponent<TileInfo>();
            return true;
        }

        tInfo = null;
        return false;
    }
    
}
