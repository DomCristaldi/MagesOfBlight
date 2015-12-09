using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using JBirdEngine;

[AddComponentMenu("Scripts/HexGrid/Node")]
public class HexNode : MonoBehaviour, INode<HexNode> {

    public BattleManager battleManager;

    public TileEntity entityOnTile;

	public Renderer hexRing;

    public Material tileNormalMat;
    public Material tileHoverMat;
    public Material tileTargetMat;
    public Material tileHasActionsMat;
    public Material tileEnemyMat;

    [Header("Debug lines:")]
	public bool showEdges;
	public bool showRadialLines;
	public bool showConnections;

	[Header("Runtime variables:")]
	public float radius;

	//INode necessities:
	public List<HexNode> connections;
    public List<HexNode> graphConnections;
	private float _g;
	private float _h;
	private HexNode _cameFrom;

	public float GetG () {
		return _g;
	}

	public void SetG (float value) {
		_g = value;
	}

	public float GetH () {
		return _h;
	}

	public void SetH (float value) {
		_h = value;
	} 

	public float GetF () {
		return _g + _h;
	}

	public void ResetGH () {
		_g = Mathf.Infinity;
		_h = Mathf.Infinity;
		_cameFrom = null;
	}

	public List<HexNode> GetConnections () {
		return new List<HexNode>(connections);
	}

	public HexNode GetCameFrom () {
		return _cameFrom;
	}

	public void SetCameFrom (HexNode cameFrom) {
		_cameFrom = cameFrom;
	}
	//End INode necessities

	protected virtual void Awake () {
		connections = new List<HexNode>();
        graphConnections = new List<HexNode>();
		for (int i  = 0; i < 6; i++) {
			connections.Add(null);
            graphConnections.Add(null);
		}
		ResetGH();
	}

	protected virtual void Start () {
        battleManager = BattleManager.singleton;

		transform.localScale = Vector3.one * radius;

		//hexRing.material.color = MoreColors.BobRoss.HappyLittleAccident();
	}

	protected virtual void Update () {
		//Debug coloring
		if (showEdges) DebugDrawEdges(Color.black);
		if (showRadialLines) DebugDrawLinks(Color.blue);
		if (showConnections) DebugDrawConnections(Color.green);
        if (BattleManager.singleton.hoveredTile != this) {
            SetNormalMat();
        }
	}

	void DebugDrawEdges (Color color) {
		Debug.DrawLine(transform.position + HexGrid.cornerDownLeft * radius, transform.position + HexGrid.cornerLeft * radius, color);
		Debug.DrawLine(transform.position + HexGrid.cornerLeft * radius, transform.position + HexGrid.cornerUpLeft * radius, color);
		Debug.DrawLine(transform.position + HexGrid.cornerUpLeft * radius, transform.position + HexGrid.cornerUpRight * radius, color);
		Debug.DrawLine(transform.position + HexGrid.cornerUpRight * radius, transform.position + HexGrid.cornerRight * radius, color);
		Debug.DrawLine(transform.position + HexGrid.cornerRight * radius, transform.position + HexGrid.cornerDownRight * radius, color);
		Debug.DrawLine(transform.position + HexGrid.cornerDownRight * radius, transform.position + HexGrid.cornerDownLeft * radius, color);
	}

	void DebugDrawLinks (Color color) {
		Debug.DrawRay(transform.position, HexGrid.linkUp * radius, color);
		Debug.DrawRay(transform.position, HexGrid.linkDown * radius, color);
		Debug.DrawRay(transform.position, HexGrid.linkRightUp * radius, color);
		Debug.DrawRay(transform.position, HexGrid.linkRightDown * radius, color);
		Debug.DrawRay(transform.position, HexGrid.linkLeftUp * radius, color);
		Debug.DrawRay(transform.position, HexGrid.linkLeftDown * radius, color);
	}

	void DebugDrawConnections (Color color) {
		foreach (HexNode node in connections) {
			if (node == null) {
				continue;
			}
			Debug.DrawLine(transform.position, node.transform.position, color);
		}
	}

	public void AddConnection (HexNode other, HexGrid.ConnectionIndex direction) {
		graphConnections[(int)direction] = other;
		other.graphConnections[HexGrid.ReverseConnectionIndex(direction)] = this;
        connections[(int)direction] = other;
        other.connections[HexGrid.ReverseConnectionIndex(direction)] = this;
	}

    public void RemoveConnection (HexNode other, HexGrid.ConnectionIndex direction) {
        graphConnections[(int)direction] = null;
        other.graphConnections[HexGrid.ReverseConnectionIndex(direction)] = null;
        connections[(int)direction] = null;
        other.connections[HexGrid.ReverseConnectionIndex(direction)] = null;
    }

    public void SetNormalMat() {
        if (BattleManager.singleton.checkedTiles.Contains(this)) {
            hexRing.material = tileTargetMat;
        }
        else if (entityOnTile != null) {
            TileAgent agent = entityOnTile as TileAgent;
            if (agent != null && agent.hasTurn && agent.team == BattleManager.CombatTeam.Player) {
                hexRing.material = tileHasActionsMat;
            }
            else if (agent != null && agent.hasTurn && agent.team == BattleManager.CombatTeam.Enemy) {
                hexRing.material = tileEnemyMat;
            }
            else {
                hexRing.material = tileNormalMat;
            }
        }
        else {
            hexRing.material = tileNormalMat;
        }
    }

    public void SetHoverMat() {
        hexRing.material = tileHoverMat;
    }

    void DisconnectAll () {
        for (int i = 0; i < 6; i++) {
            if (graphConnections[i] == null) {
                continue;
            }
            RemoveConnection(graphConnections[i], (HexGrid.ConnectionIndex)i);
        }
    }

    public void RemoveFromTemporaryGraph () {
        for (int i = 0; i < 6; i++) {
            if (connections[i] != null) {
                connections[i].connections[HexGrid.ReverseConnectionIndex(i)] = null;
            }
            connections[i] = null;
        }
    }

    public void AddToTemporaryGraph () {
        for (int i = 0; i < 6; i++) {
            connections[i] = graphConnections[i];
            connections[i].connections[HexGrid.ReverseConnectionIndex(i)] = connections[i].graphConnections[HexGrid.ReverseConnectionIndex(i)];
        }
    }

    void OnDisable () {
        DisconnectAll();
    }


}
