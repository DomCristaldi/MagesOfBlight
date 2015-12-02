using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(Collider))]
public class HexCropVolume : MonoBehaviour {

    private Collider[] colliders;
    private List<HexNode> deactivatedNodes;

    void Awake () {
        colliders = GetComponents<Collider>();
    }

    void LateUpdate () {
        foreach (Collider collider in colliders) {
            deactivatedNodes = new List<HexNode>();
            foreach (HexNode node in HexGridAssembler.singleton.tiles) {
                if (collider.bounds.Contains(node.transform.position)) {
                    node.gameObject.SetActive(false);
                    deactivatedNodes.Add(node);
                }
            }
            foreach (HexNode node in deactivatedNodes) {
                HexGridAssembler.singleton.tiles.Remove(node);
            }
        }
    }

}
