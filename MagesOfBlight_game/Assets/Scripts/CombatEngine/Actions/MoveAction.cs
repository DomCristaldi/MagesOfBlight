using UnityEngine;
using System.Collections;
using JBirdEngine;

[CreateAssetMenuAttribute]
public class MoveAction : RangeBaseAction {

	public override void Init () {
		base.Init();
		tileCheckFlags = EnumHelper.CombineFlags<TileCheckFlags>(TileCheckFlags.unoccupied);
	}

	public override bool DoAction () {
		return base.DoAction();

	}

}
