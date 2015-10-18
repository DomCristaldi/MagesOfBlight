using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(AgentActions))]
public class AgentCanvasSpawner : MonoBehaviour {

	public AgentActions agentActions;

	void Start () {
		agentActions = GetComponent<AgentActions>();
	}

	void Update () {
		
	}
}
