using UnityEngine;
using System;

public class AgentAnimController : MonoBehaviour {

    [System.Serializable]
    public class AnimationInfo {
        public enum AnimType {
            Attack = 0,
            Block = 1,
            Death = 2,
            Move = 3,
        }

        public enum AttackType {
            None = 0,
            Melee = 1,
            RangedDirect = 2,
            RangedAOE = 3,
            RangedSummon = 4,
        }

        public AnimType animType;

        public AttackType animAttackType;
    }

    public Animator animController;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void TriggerAnim(AnimationInfo info) {
        switch (info.animType) {
            case (AnimationInfo.AnimType.Attack):

                //Debug.Log("set this shit");

                animController.SetInteger("AttackTypeInt", (int)info.animAttackType);
                animController.SetTrigger("AttackTrig");

                //HandleAttackAnim(info);
                break;
        }
    }

    /*
    private void HandleAttackAnim(AnimationInfo info) {
        switch (info.type) {
            case (AnimationInfo.AttackType.Melee):
                //animController.SetInteger("AttackTypeInt", info.type);
                break;
            case (AnimationInfo.AttackType.RangedDirect):

                break;
            case (AnimationInfo.AttackType.RangedAOE):

                break;
            case (AnimationInfo.AttackType.RangedSummon):

                break;
        }
    } 
    */
}
