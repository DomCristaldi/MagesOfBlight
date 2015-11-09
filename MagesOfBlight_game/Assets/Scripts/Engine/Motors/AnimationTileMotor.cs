using UnityEngine;
using System.Collections;

public class AnimationTileMotor : TileMotor {

    public Animator animController;

    protected string movementBlend = "MovementBlend";

    protected override Vector3 MoveToLocationMethod(Vector3 position, Vector3 destination, float deltaTime) {

        animController.SetFloat(movementBlend, destination.magnitude);

        return base.MoveToLocationMethod(position, destination, deltaTime);
    }

}
