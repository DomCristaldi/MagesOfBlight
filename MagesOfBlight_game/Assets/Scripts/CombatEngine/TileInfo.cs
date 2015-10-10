using UnityEngine;
using System.Collections;

public class TileInfo : MonoBehaviour {

    public BattleManager battleManager;

    public TileEntity entityOnTile;

    void Awake() {

    }

	// Use this for initialization
	void Start () {
        battleManager = BattleManager.singleton;
        

    }

    // Update is called once per frame
    void Update () {
	
	}
}
