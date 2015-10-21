using UnityEngine;
using System.Collections;

[AddComponentMenu("Scripts/BattleEngine/Tiles/TileInfo")]
public class TileInfo : HexNode {

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
