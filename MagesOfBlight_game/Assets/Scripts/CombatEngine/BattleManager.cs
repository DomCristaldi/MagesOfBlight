using UnityEngine;
using System.Collections;

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

    public LayerMask tileLayer;


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
	
	}
	
	// Update is called once per frame
	void Update () {
	    
	}

    public void SwitchCombatTurn(CombatTurn turn) {
        curCombatTurn = turn;
    }

    public void SwitchCombatPhase(CombatPhase phase) {
        curCombatPhase = phase;
    }

    private void SwitchToSelectionMode() {
        StartCoroutine(HandleSelection());
    }

    private void HandleCombatTurn() {

    }

    private IEnumerator HandleSelection() {




        yield break;
    }

    /*
    public void TileRaycast(Vector3 origin, Vector3 direction, out RaycastHit hitInfo) {

    }
    */
}
