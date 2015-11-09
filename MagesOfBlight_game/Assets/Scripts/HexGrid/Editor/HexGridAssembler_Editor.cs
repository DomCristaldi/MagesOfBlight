using UnityEngine;
using UnityEditor;
using System.Collections;

[CustomEditor(typeof(HexGridAssembler))]
public class HexGridAssembler_Editor : Editor {

    public override void OnInspectorGUI() {
        base.OnInspectorGUI();

        HexGridAssembler assembler = (HexGridAssembler)target;


        EditorGUILayout.BeginHorizontal();
        
        if (GUILayout.Button("Show Hexes")) {
            foreach(HexNode tile in assembler.tiles) {
                tile.GetComponent<Renderer>().enabled = true;
            }
        }

        if (GUILayout.Button("Hide Hexes")) {
            foreach (HexNode tile in assembler.tiles) {
                tile.GetComponent<Renderer>().enabled = false;
            }
        }

        EditorGUILayout.EndHorizontal();

    }


}
