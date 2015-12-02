using UnityEngine;
using UnityEditor;
using System.Collections;

[CustomEditor(typeof(BattleCameraController))]
public class BattleCameraController_Editor : Editor {

    BattleCameraController controller;

    Color handleColor = Color.yellow;

    void OnEnable() {
        controller = (BattleCameraController)target;
    }

    void OnSceneGUI() {
        Color originalColor = Handles.color;
        Handles.color = handleColor;

        //Handles.DrawLine(new Vector3(controller.clampReferencePoint.position.x))
        Handles.DrawLine(new Vector3(controller.clampReferencePoint.position.x - controller.clampDistX, controller.clampReferencePoint.position.y, controller.clampReferencePoint.position.z - controller.clampDistZ),
                         new Vector3(controller.clampReferencePoint.position.x + controller.clampDistX, controller.clampReferencePoint.position.y, controller.clampReferencePoint.position.z - controller.clampDistZ));

        Handles.DrawLine(new Vector3(controller.clampReferencePoint.position.x - controller.clampDistX, controller.clampReferencePoint.position.y, controller.clampReferencePoint.position.z + controller.clampDistZ),
                         new Vector3(controller.clampReferencePoint.position.x + controller.clampDistX, controller.clampReferencePoint.position.y, controller.clampReferencePoint.position.z + controller.clampDistZ));


        Handles.DrawLine(new Vector3(controller.clampReferencePoint.position.x - controller.clampDistX, controller.clampReferencePoint.position.y, controller.clampReferencePoint.position.z - controller.clampDistZ),
                         new Vector3(controller.clampReferencePoint.position.x - controller.clampDistX, controller.clampReferencePoint.position.y, controller.clampReferencePoint.position.z + controller.clampDistZ));

        Handles.DrawLine(new Vector3(controller.clampReferencePoint.position.x + controller.clampDistX, controller.clampReferencePoint.position.y, controller.clampReferencePoint.position.z - controller.clampDistZ),
                         new Vector3(controller.clampReferencePoint.position.x + controller.clampDistX, controller.clampReferencePoint.position.y, controller.clampReferencePoint.position.z + controller.clampDistZ));


        Handles.DrawLine(new Vector3(controller.transform.position.x, controller.clampReferencePoint.position.y - controller.clampDistY, controller.transform.position.z),
                         new Vector3(controller.transform.position.x, controller.clampReferencePoint.position.y + controller.clampDistY, controller.transform.position.z));


        Handles.color = originalColor;
    }

}
