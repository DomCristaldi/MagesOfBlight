using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Animator))]
public class RootMotionCapture : MonoBehaviour {

    Animator animController;

    private Vector3 _deltaAnimPosition;
    public Vector3 deltaAnimPosition {
        get { return _deltaAnimPosition; }
    }

    void Awake() {
        animController = GetComponent<Animator>();
    }

    void OnAnimatorMove() {
        _deltaAnimPosition = animController.deltaPosition;
        
    }
    
}
