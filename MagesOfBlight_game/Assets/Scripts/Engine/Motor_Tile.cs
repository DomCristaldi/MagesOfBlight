using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

[AddComponentMenu("Scripts/Engine/Motor_Tile")]
public class Motor_Tile : MonoBehaviour {

    public float moveSpeed = 1.0f;

    public HexNode currentTile;
    public List<HexNode> suppliedPath;

    public bool doneMoving = true;
    private Coroutine moveRoutine = null;

    void Awake() {
        
    }

	void Start () {
	
	}
	
	
	void Update () {
        //HandleMovement();
	}

    /*
    public void GivePath(List<HexNode> path) {
        //GivePath((List<HexNode>) path.Cast<HexNode>());
    }
    */
    public void GivePath(List<HexNode> path) {
        suppliedPath = path;

        Debug.Log(suppliedPath.Count);

    }

    public bool NavigatePath() {

        Debug.Log("start navigation");

        //can't begin, so don't try
        if (suppliedPath == null) {
            Debug.LogError("No Supplied Path. Returning false");
            return false;
        }

        //is finished
        else if (doneMoving == true) {
            moveRoutine = null;
            suppliedPath = null;
            doneMoving = false;
            return true;
        }

        //creation condition
        else if (doneMoving == false && moveRoutine == null && suppliedPath != null) {
            doneMoving = false;

            moveRoutine = StartCoroutine(MoveRoutine(suppliedPath));

            Debug.Log("start move routine");
            
        }

        Debug.Log("Exit condition reached");

        //we're still moving, return false
        return false;
    }

    private void HandleMovement() {
        
    }

    private bool MoveToLocation(HexNode start, HexNode end) {
        //transform.position = Vector3.MoveTowards()

        transform.position = Vector3.MoveTowards(transform.position, end.transform.position, moveSpeed * Time.deltaTime);

        if (Vector3.Distance(transform.position, start.transform.position) > Vector3.Distance(transform.position, end.transform.position)) {
            end.entityOnTile = BattleManager.singleton.selectedAgent;
            start.entityOnTile = null;

            currentTile = end;
        }

        if (transform.position == end.transform.position) {
            return true;
        }

        return false;

    }


    private IEnumerator MoveRoutine(List<HexNode> pathList) {

        int i = 0;
        while (i < pathList.Count - 1) {
            if (MoveToLocation(pathList[i], pathList[i + 1])) {
                ++i;
            }
            yield return null;
        }

        doneMoving = true;

        yield break;
    }
}
