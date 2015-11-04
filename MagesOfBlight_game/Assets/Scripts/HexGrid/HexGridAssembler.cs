using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using JBirdEngine;

[AddComponentMenu("Scripts/HexGrid/Assembler")]
public class HexGridAssembler : MonoBehaviour {

	public static HexGridAssembler singleton;

	[Header("Debug lines:")]
	public bool showEdges;
	private bool _showEdges;
	public bool showRadialLines;
	private bool _showRadialLines;
	public bool showConnections;
	private bool _showConnections;

	public HexNode nodePrefab;

	public float tileRadius;
	public float gridRadius;

	public List<HexNode> tiles;

	public Transform test;

	void Awake () {
		Singleton.ManageSingleton<HexGridAssembler>(this, ref singleton);
		tiles = new List<HexNode>();
		_showEdges = showEdges;
		_showRadialLines = showRadialLines;
		_showConnections = showConnections;
		//Create Hex Mesh Asset
		MeshFilter mf = nodePrefab.GetComponent<MeshFilter>();
		if (mf != null && mf.sharedMesh == null) {
			mf.sharedMesh = HexGrid.hexMesh;
		}
		MeshCollider col = nodePrefab.GetComponent<MeshCollider>();
		if (col != null && col.sharedMesh == null) {
			col.sharedMesh = HexGrid.hexMesh;
		}
	}

	void Start () {
		CreateGrid();
	}

	void Update () {
		if (_showEdges ^ showEdges) {
			_showEdges = showEdges;
			foreach (HexNode node in tiles) {
				node.showEdges = showEdges;
			}
		}
		if (_showRadialLines ^ showRadialLines) {
			_showRadialLines = showRadialLines;
			foreach (HexNode node in tiles) {
				node.showRadialLines = showRadialLines;
			}
		}
		if (_showConnections ^ showConnections) {
			_showConnections = showConnections;
			foreach (HexNode node in tiles) {
				node.showConnections = showConnections;
			}
		}
		if (test != null) {
			List<HexNode> path = AIHelper.AStar<HexNode>(tiles[0], ListHelper.GetClosestToPosition(tiles, test.position), mode: AIHelper.HeuristicMode.hexagonal);
			for (int i = 1; i < path.Count; i++) {
				Debug.DrawLine(path[i-1].transform.position, path[i].transform.position, Color.red);
			}
		}
	}

	int GetLastLoopStart (int i) {
		if (i == 1) {
			return 0;
		}
		if (i == 2) {
			return 1;
		}
		return GetLastLoopStart(i - 1) + (i - 2) * 6;
	}

	void CreateGrid () {
		HexNode newNode = SpawnNodeAtPosition(transform.position);
		for (float i = 1f; i < gridRadius; i += 1f) {
			//Reset to center
			Vector3 placePosition = transform.position;
			//Find beginning of last loop
			HexNode lastLoopStart = tiles[GetLastLoopStart((int)i)];
			HexNode lastLoopCurrent = lastLoopStart;
			//Go up once
			placePosition = placePosition + HexGrid.linkUp * 2f * tileRadius * i;
			HexNode thisLoopStart = newNode = SpawnNodeAtPosition(placePosition);
			newNode.AddConnection(lastLoopStart, HexGrid.ConnectionIndex.Down);
			//Start going down and to the right
			for (float j = 0f; j < i; j += 1f) {
				placePosition = placePosition + HexGrid.linkRightDown * 2f * tileRadius;
				newNode = SpawnNodeAtPosition(placePosition);
				newNode.AddConnection(tiles[tiles.Count - 2], HexGrid.ConnectionIndex.LeftUp);
				newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.LeftDown);
				if ((int)i - (int)j != 1) {
					lastLoopCurrent = lastLoopCurrent.connections[(int)HexGrid.ConnectionIndex.RightDown];
					newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.Down);
				}
			}
			//Start going down
			for (float j = 0f; j < i; j += 1f) {
				placePosition = placePosition + HexGrid.linkDown * 2f * tileRadius;
				newNode = SpawnNodeAtPosition(placePosition);
				newNode.AddConnection(tiles[tiles.Count - 2], HexGrid.ConnectionIndex.Up);
				newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.LeftUp);
				if ((int)i - (int)j != 1) {
					lastLoopCurrent = lastLoopCurrent.connections[(int)HexGrid.ConnectionIndex.Down];
					newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.LeftDown);
				}
			}
			//Start going down and to the left
			for (float j = 0f; j < i; j += 1f) {
				placePosition = placePosition + HexGrid.linkLeftDown * 2f * tileRadius;
				newNode = SpawnNodeAtPosition(placePosition);
				newNode.AddConnection(tiles[tiles.Count - 2], HexGrid.ConnectionIndex.RightUp);
				newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.Up);
				if ((int)i - (int)j != 1) {
					lastLoopCurrent = lastLoopCurrent.connections[(int)HexGrid.ConnectionIndex.LeftDown];
					newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.LeftUp);
				}
			}
			//Start going up and to the left
			for (float j = 0f; j < i; j += 1f) {
				placePosition = placePosition + HexGrid.linkLeftUp * 2f * tileRadius;
				newNode = SpawnNodeAtPosition(placePosition);
				newNode.AddConnection(tiles[tiles.Count - 2], HexGrid.ConnectionIndex.RightDown);
				newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.RightUp);
				if ((int)i - (int)j != 1) {
					lastLoopCurrent = lastLoopCurrent.connections[(int)HexGrid.ConnectionIndex.LeftUp];
					newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.Up);
				}
			}
			//Start going up
			for (float j = 0f; j < i; j += 1f) {
				placePosition = placePosition + HexGrid.linkUp * 2f * tileRadius;
				newNode = SpawnNodeAtPosition(placePosition);
				newNode.AddConnection(tiles[tiles.Count - 2], HexGrid.ConnectionIndex.Down);
				newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.RightDown);
				if ((int)i - (int)j != 1) {
					lastLoopCurrent = lastLoopCurrent.connections[(int)HexGrid.ConnectionIndex.Up];
					newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.RightUp);
				}
			}
			//Go up and to the right one less than the radius to bring 'er home
			for (float j = 0f; j < i - 1; j += 1f) {
				placePosition = placePosition + HexGrid.linkRightUp * 2f * tileRadius;
				newNode = SpawnNodeAtPosition(placePosition);
				newNode.AddConnection(tiles[tiles.Count - 2], HexGrid.ConnectionIndex.LeftDown);
				newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.Down);
				if ((int)i - (int)j != 1) {
					lastLoopCurrent = lastLoopCurrent.connections[(int)HexGrid.ConnectionIndex.RightUp];
					newNode.AddConnection(lastLoopCurrent, HexGrid.ConnectionIndex.RightDown);
				}
			}
			//Connect the end of the loop to the beginning and the last loop
			newNode.AddConnection(thisLoopStart, HexGrid.ConnectionIndex.RightUp);
			newNode.AddConnection(lastLoopStart, HexGrid.ConnectionIndex.RightDown);
		}
	}

	HexNode SpawnNodeAtPosition (Vector3 placePosition) {
		GameObject newNode = Instantiate(nodePrefab.gameObject, placePosition, Quaternion.identity) as GameObject;
		HexNode newNodeScript = newNode.GetComponent<HexNode>();
		newNodeScript.radius = tileRadius;
		newNode.transform.parent = transform;
		newNodeScript.showEdges = showEdges;
		newNodeScript.showRadialLines = showRadialLines;
		newNodeScript.showConnections = showConnections;
		tiles.Add(newNodeScript);
		return newNodeScript;
	}

}
