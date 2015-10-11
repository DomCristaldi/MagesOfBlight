using UnityEngine;
using System.Collections;

public class TileInfo : MonoBehaviour {

    public BattleManager battleManager;

    public TileEntity entityOnTile;

    protected virtual void Awake() {

    }

	// Use this for initialization
	protected virtual void Start () {
        battleManager = BattleManager.singleton;
        

    }

    // Update is called once per frame
    protected virtual void Update () {
	
	}
}
