using UnityEngine;
using System.Collections;
using JBirdEngine;

[RequireComponent(typeof(HexGridAssembler))]
[ExecuteInEditMode]
public class HexGridLines : MonoBehaviour {

    public HexGridAssembler assembler;

    void Start () {
        assembler = GetComponent<HexGridAssembler>();
    }

    void Update () {
        DebugDrawLines(MoreColors.BobRoss.prussianBlue);
    }

    void DebugDrawLines (Color color) {
        //spokes
        Debug.DrawRay(transform.position, HexGrid.linkUp * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
        Debug.DrawRay(transform.position, HexGrid.linkDown * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
        Debug.DrawRay(transform.position, HexGrid.linkRightUp * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
        Debug.DrawRay(transform.position, HexGrid.linkRightDown * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
        Debug.DrawRay(transform.position, HexGrid.linkLeftUp * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
        Debug.DrawRay(transform.position, HexGrid.linkLeftDown * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
        //edges
        Debug.DrawRay(HexGrid.linkUp * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, 
                      HexGrid.linkRightDown * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
        Debug.DrawRay(HexGrid.linkRightUp * (assembler.gridRadius - 1) * assembler.tileRadius * 2f,
                      HexGrid.linkDown * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
        Debug.DrawRay(HexGrid.linkRightDown * (assembler.gridRadius - 1) * assembler.tileRadius * 2f,
                      HexGrid.linkLeftDown * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
        Debug.DrawRay(HexGrid.linkDown * (assembler.gridRadius - 1) * assembler.tileRadius * 2f,
                      HexGrid.linkLeftUp * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
        Debug.DrawRay(HexGrid.linkLeftDown * (assembler.gridRadius - 1) * assembler.tileRadius * 2f,
                      HexGrid.linkUp * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
        Debug.DrawRay(HexGrid.linkLeftUp * (assembler.gridRadius - 1) * assembler.tileRadius * 2f,
                      HexGrid.linkRightUp * (assembler.gridRadius - 1) * assembler.tileRadius * 2f, color);
    }

}
