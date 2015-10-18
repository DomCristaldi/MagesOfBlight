using UnityEngine;
using System.Collections.Generic;

[AddComponentMenu("Scripts/BattleEngine/Tiles/Entities/TileAgent")]
public class TileAgent : TileEntity {

    public float moveSpeed = 1.0f;

	// Use this for initialization
	protected override void Start () {
	    
	}
	
	// Update is called once per frame
	protected override void Update () {
	    
	}

    public void FollowPath(List<Vector3> pathToFollow) {

    }

}
