using UnityEngine;
using System.Collections;

[AddComponentMenu("Scripts/BattleEngine/Tiles/TileInfo")]
public class TileInfo : HexNode {

    public BattleManager battleManager;

    public TileEntity entityOnTile;

    protected override void Awake() {
        base.Awake();
    }

	// Use this for initialization
	protected override void Start () {
        base.Start();

        battleManager = BattleManager.singleton;
        

    }

    // Update is called once per frame
    protected override void Update () {
        base.Update();
	}
}
