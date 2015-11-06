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
        _trueDirec = Vector3.MoveTowards(_trueDirec,
                                         desiredDirec,
                                         redirectSpeed * Time.deltaTime);
    }

    private void AssignRotationToModel() {
        modelTf.localRotation = Quaternion.LookRotation(_trueDirec, modelTf.up);
    }

    public void SetDesiredLookDirec(Vector3 direc) {
        desiredDirec = direc.normalized;
    }
}
