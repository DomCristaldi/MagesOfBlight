﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

[AddComponentMenu("Scripts/Engine/Motor_Tile")]
public class TileMotor : MonoBehaviour {

    [Header("Movement Settings")]
    public float moveSpeed = 1.0f;
    public AnimationCurve speedRamp;

    public Vector3 desiredPoint;
    public Vector3 desiredDirec {
        get { return desiredPoint - transform.position; }
    }

    //public Vector3 desiredDirec;
    protected Vector3 _trueDirec;
    public Vector3 trueDirec {
        get { return _trueDirec; }
    }
    public float redirectSpeed = 1.0f;

    [Range(0.0f, 2.0f)]
    public float moveSpeedModifier = 1.0f;

    /*
    public Vector3 desiredDirecEndpoint {
        get { return transform.position + desiredDirec; }
        set { desiredDirec = value - transform.position; }
    }
    */

    public Vector3 trueDirecEndpoint {
        get { return transform.position + _trueDirec; }
    }
    /*
    public Vector3 desiredDirecEndpointNormalized {
        get { return transform.position + desiredDirec.normalized; }
    }
    */
    public Vector3 trueDirecEndpointNormalized {
        get { return transform.position + _trueDirec.normalized; }
    }

    [Header("Path Info")]
    public HexNode currentTile;
    public List<HexNode> suppliedPath;
	public int tilesMoved;
    public int availableMoveSteps;

    [HideInInspector]
    public bool doneMoving;
    [HideInInspector]
    public bool isMoving;
    private Coroutine moveRoutine = null;

    protected virtual void Awake() {
        //desiredDirec = Vector3.zero;
        _trueDirec = Vector3.zero;

        doneMoving = false;

        isMoving = false;
    }

	protected virtual void Start () {
	
	}
	
	
	protected virtual void Update () {
        HandleMovement();

        //Debug.DrawRay(transform.position, _trueDirec, Color.red);
	}

    /*
    public void GivePath(List<HexNode> path) {
        //GivePath((List<HexNode>) path.Cast<HexNode>());
    }
    */
    public void GivePath(List<HexNode> path) {
        suppliedPath = path;

        //Debug.Log(suppliedPath.Count);

    }

    public bool NavigatePath() {

        //Debug.Log("start navigation");

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

            //Debug.Log("start move routine");
            
        }

        //Debug.Log("Exit condition reached");

        //we're still moving, return false
        return false;
    }

    private void HandleMovement() {
        UpdateTrueDirec();

        //Debug.DrawRay(transform.position, desiredDirec, JBirdEngine.MoreColors.orange());
        //Debug.DrawRay(transform.position, _trueDirec, JBirdEngine.MoreColors.purple());
    }

    private void UpdateTrueDirec() {
        _trueDirec = Vector3.MoveTowards(_trueDirec, desiredDirec, redirectSpeed);
    }



    /*
    public Vector3 SetDesiredDirec(Vector3 position) {
        //desiredDirec = direc.normalized;
        desiredDirecEndpoint = position;
        return desiredDirec;
    }
    */

    /// <summary>
    /// Move the Agent in the directoin formed by the line from the star to the end. Returns true when Agent reaches end
    /// </summary>
    /// <param name="start"></param>
    /// <param name="end"></param>
    /// <returns></returns>
    protected bool MoveToLocation(HexNode start, HexNode end) {
        //transform.position = Vector3.MoveTowards(transform.position, end.transform.position, moveSpeed * Time.deltaTime);



        Debug.DrawRay(transform.position, desiredDirec, JBirdEngine.MoreColors.orange);


        //SetDesiredDirec(Vector3.Normalize(end.transform.position - transform.position));

        
        transform.position = MoveToLocationMethod(transform.position,
                                                  desiredPoint,//HACK: start using _trueDirec
                                                  moveSpeed * Time.deltaTime);
        

        //update current tile to the one the Agent is currently over
        if (Vector3.Distance(transform.position, start.transform.position) > Vector3.Distance(transform.position, end.transform.position)) {
            end.entityOnTile = BattleManager.singleton.selectedAgent;
            start.entityOnTile = null;

            currentTile = end;
        }

        if (transform.position == end.transform.position) {
            //Debug.Log("at location");
			tilesMoved++;
            return true;
        }

        return false;
    }


    protected virtual Vector3 MoveToLocationMethod(Vector3 position, Vector3 destination, float deltaTime) {
        return Vector3.MoveTowards(position,
                                   destination,
                                   deltaTime);
    }


    private IEnumerator MoveRoutine(List<HexNode> pathList) {

        isMoving = true;

        if (pathList.Count < 2) {//path isn't long enough, break out
            doneMoving = true;
            isMoving = false;
            yield break; 
        }

        //SetDesiredDirec(pathList[1].transform.position - pathList[0].transform.position);
        desiredPoint = pathList[1].transform.position;

        int i = 0;
        while (i < pathList.Count - 1 && availableMoveSteps > 0) {
            //move along path, update what tile Agent is heading to when arrived at current target tile
            if (MoveToLocation(pathList[i], pathList[i + 1])) {
                ++i;
                --availableMoveSteps;
                if (availableMoveSteps == 0) {
                    desiredPoint = transform.position;
                }
                else if (i < pathList.Count - 1) {
                    desiredPoint = pathList[i + 1].transform.position;
                    //SetDesiredDirec(pathList[i + 1].transform.position - pathList[i].transform.position);
                }
            }
            yield return null;
        }



        doneMoving = true;
        isMoving = false;

        yield break;
    }
}
