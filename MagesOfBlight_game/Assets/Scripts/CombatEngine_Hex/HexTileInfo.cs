using UnityEngine;
using System.Collections;

[AddComponentMenu("Scripts/BattleEngine/Tiles/HexTileInfo")]
public class HexTileInfo : TileInfo {

    HexNode node;

    protected override void Awake() {
        base.Awake();

        node = GetComponent<HexNode>();
    }

    // Use this for initialization
    protected override void Start () {
        base.Start();
	}
	
	// Update is called once per frame
	protected override void Update () {
        base.Update();
	}
}
