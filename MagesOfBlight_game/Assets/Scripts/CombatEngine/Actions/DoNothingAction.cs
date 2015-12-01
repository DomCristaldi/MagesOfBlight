using UnityEngine;
using System.Collections;

[CreateAssetMenuAttribute]
public class DoNothingAction : BaseAction {

    public override void Init () {
        
    }

    public override bool DoAction () {
        return ActionSuccess();
    }

}
