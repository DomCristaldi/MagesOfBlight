using UnityEngine;
using UnityEditor;
using System.Collections;

[CustomEditor(typeof(DiskViewer), true)]
[CanEditMultipleObjects]
public class DiskViewer_Editor : Editor {

    void OnSceneGUI() {
        DiskViewer viewer = (DiskViewer)target;

        Color originalColor = Handles.color;
        Handles.color = viewer.discColor;

        /*
        Handles.DrawSolidDisc(viewer.transform.position,
                              viewer.transform.up,
                              viewer.discRadius);

        Handles.color = Color.black;
        */


        Handles.DrawWireDisc(viewer.transform.position,
                             viewer.transform.up,
                             viewer.discRadius);

        Handles.color = originalColor;


        Handles.DrawLine(new Vector3(viewer.transform.position.x - viewer.discRadius,
                                     viewer.transform.position.y,
                                     viewer.transform.position.z),
                         new Vector3(viewer.transform.position.x + viewer.discRadius,
                                     viewer.transform.position.y,
                                     viewer.transform.position.z));


        //Graphics.DrawMesh()
        /*
        if (viewer.assetMesh != null) {
            Graphics.DrawMeshNow(viewer.assetMesh,
                                 viewer.transform.position,
                                 viewer.transform.rotation);
        }
        */
    }

    void OnDrawGizmos() {

    }

}
