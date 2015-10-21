using UnityEngine;
using System.Collections;

[AddComponentMenu("Scripts/BattleEngine/Tiles/Entities/TileEntity")]
public class TileEntity : MonoBehaviour {

    protected BattleManager battleManRef;

    protected virtual void Awake() {
    }

	// Use this for initialization
	protected virtual void Start () {
        battleManRef = BattleManager.singleton;

	}
	
	// Update is called once per frame
	protected virtual void Update () {
	
	}
}
