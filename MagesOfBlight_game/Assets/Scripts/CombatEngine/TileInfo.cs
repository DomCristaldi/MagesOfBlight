using UnityEngine;
using System.Collections;

[AddComponentMenu("Scripts/BattleEngine/Tiles/TileInfo")]
public class TileInfo : MonoBehaviour {

    public BattleManager battleManager;

    public TileEntity entityOnTile;

    public HexNode node;

    protected virtual void Awake() {
        node = GetComponent<HexNode>();
    }

	// Use this for initialization
	protected virtual void Start () {
        battleManager = BattleManager.singleton;
        

    }

    // Update is called once per frame
    protected virtual void Update () {
	
	}
}
