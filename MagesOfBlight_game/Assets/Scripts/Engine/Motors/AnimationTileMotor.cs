using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AgentAnimController))]
public class AnimationTileMotor : TileMotor {

    protected AgentAnimController agentAnimControl;

    protected Animator _animController;
    protected RootMotionCapture _rmCapture;
    public RootMotionCapture rmCapture { get { return _rmCapture; } }

    protected string movementBlend = "MovementBlend";

    public float walkAnimMaxVal = 1.0f;

    protected override void Awake() {
        base.Awake();

        agentAnimControl = GetComponent<AgentAnimController>();

        _animController = agentAnimControl.animController;

        _rmCapture = _animController.GetComponent<RootMotionCapture>();
    }

    protected override void Update() {
        base.Update();

        HandleAnimations();
    }

    protected virtual void HandleAnimations() {
        _animController.SetFloat(movementBlend, _trueDirec.normalized.magnitude);
    }

    protected override Vector3 MoveToLocationMethod(Vector3 position, Vector3 destination, float deltaTime) {
        
        //animController.SetFloat(movementBlend, destination.magnitude);

        //return transform.position + _rmCapture.deltaAnimPosition;

        /*
        float dist = ((_rmCapture.deltaAnimPosition + transform.position) - transform.position).magnitude;

        Debug.Log(_rmCapture.deltaAnimPosition.magnitude);

        moveSpeed = dist;

        return base.MoveToLocationMethod(position, destination, deltaTime);
        */

        //if we're going to overshoot the target just set it as the destination
        if (Vector3.Distance(position, destination) < _rmCapture.deltaAnimPosition.magnitude) {
            return (destination);
        }

        Vector3 direc = -(position - destination).normalized;

        Vector3 retPos = Vector3.MoveTowards(position,
                                             position + (direc * _rmCapture.deltaAnimPosition.magnitude),
                                             Mathf.Infinity);

        return retPos;
    }

}
