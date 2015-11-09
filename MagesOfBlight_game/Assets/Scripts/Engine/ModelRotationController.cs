using UnityEngine;
using System.Collections;

public class ModelRotationController : MonoBehaviour {

    public Transform modelTf;

    public Vector3 desiredDirec;
    private Vector3 _trueDirec;
    public Vector3 trueDirec {
        get { return _trueDirec; }
    }

    public float redirectSpeed = 0.5f;

    void Awake() {
        _trueDirec = Vector3.zero;
    }

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	    UpdateTrueDirec();

        AssignRotationToModel();
	}

    private void UpdateTrueDirec() {
        /*
        _trueDirec = Vector3.MoveTowards(_trueDirec,
                                         desiredDirec,
                                         redirectSpeed * Time.deltaTime);
        */

        //DEBUG: show comparison between true and desired direction
        //Debug.LogFormat("True: {0} | Desired: {1}", trueDirec, desiredDirec);
        
        _trueDirec = Vector3.RotateTowards(_trueDirec, desiredDirec, redirectSpeed, Mathf.Infinity);

        Debug.DrawRay(transform.position, _trueDirec, JBirdEngine.MoreColors.goronTunic());


        //_trueDirec = _trueDirec.normalized;
    }

    private void AssignRotationToModel() {
        modelTf.localRotation = Quaternion.LookRotation(_trueDirec, modelTf.up);
    }

    public void SetDesiredLookDirec(Vector3 direc) {
        if (direc != Vector3.zero) {//if zero it will auto-snap the rotation, we don't want this
            desiredDirec = direc.normalized;
        }
    }
}
