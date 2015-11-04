using UnityEngine;
using System.Collections;

public class BattleCameraController : MonoBehaviour {

    BattleCameraController singleton = null;

    Camera cam;

    Vector3 dragMarkerPos;

    Vector3 prevMousePos;
    Plane projectionPlane;
    Ray mouseRay;

    public Vector3 mousePosOnScreen {
        get { return cam.ScreenToWorldPoint(Input.mousePosition); }
    }

    public Vector3 mouseDirec {
        get {
            return  cam.transform.forward; 
        }
    }

    void Awake() {
        if (singleton == null) { singleton = this; }

        cam = GetComponent<Camera>();
    }

	// Use this for initialization
	void Start () {
        //if (!Application.isEditor) {
            Cursor.lockState = CursorLockMode.Confined;
        //}

        dragMarkerPos = GetMousePosOnGrid();
        projectionPlane = new Plane(Vector3.up, HexGridAssembler.singleton.transform.position);
	}
	
	// Update is called once per frame
	void Update () {
        HandleTiles();
        HandleMovement();
        HandleZoom();

        Debug.DrawRay(dragMarkerPos, Vector3.up, Color.green);
	}

    private void HandleTiles() {
        HexNode node;
        if (BattleManager.singleton.TileRaycast(mousePosOnScreen, mouseDirec, out node)) {
            //Debug.Log("hit");

            BattleManager.singleton.SetHoveredTile(node);
        }
    }

    private void HandleMovement() {
        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Move) != 0.0f) {

            Vector3 newMousePos = GetMousePosOnGrid();

            Debug.DrawLine(prevMousePos, newMousePos, Color.red);
            transform.Translate(prevMousePos - newMousePos, Space.World);

            prevMousePos = GetMousePosOnGrid();


            /*
            Debug.LogFormat("{0}, {1}", InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.SelectionX),
                                        InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.SelectionY));
            */


            /*
            transform.Translate(InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.SelectionX),
                                0.0f,
                                InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.SelectionY),
                                Space.World);
            */
        }
        else {//WHAT TO DO WHILE NOT CLICKING
            dragMarkerPos = GetMousePosOnGrid();
            prevMousePos = GetMousePosOnGrid();
        }


    }

    private void HandleZoom() {
        //Debug.LogFormat("Zoom: {0}", InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Zoom));

        float zoomAmount = InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Zoom);

        //transform.Translate(Vector3.forward * zoomAmount, Space.Self);
        cam.orthographicSize += zoomAmount;
    }

    public Vector3 GetMousePosOnGrid() {
        projectionPlane.SetNormalAndPosition(Vector3.up, HexGridAssembler.singleton.transform.position);

        Vector3 mousePosInWorld = cam.ScreenToWorldPoint(Input.mousePosition);
        mouseRay.origin = mousePosInWorld;
        mouseRay.direction = cam.transform.forward;

        float mouseRayDist;
        projectionPlane.Raycast(mouseRay, out mouseRayDist);
        Vector3 camPoint = mouseRay.GetPoint(mouseRayDist);

        //Vector3.ProjectOnPlane()
        /*
        float mouseY = mousePosInWorld.y - HexGridAssembler.singleton.transform.position.y;
        Vector3 camToHitPointDirec = (cam.transform.forward / Mathf.Abs(cam.transform.forward.y)) * mouseY;
        Vector3 camPoint = cam.transform.position + camToHitPointDirec;
        */
        return camPoint;
    }

    /*
    public bool RaycastFromScreenIntoScene(ref Vector3 result, Vector2 position, Vector3 direction, int layerMask) {
        RaycastHit hit;
        if (Physics.Raycast(position, direction, out hit, Mathf.Infinity, layerMask)) {
            result = hit.transform.position;
            return true;
        }

        //result = null;
        return false;
    }
    */
    /*
    public Vector3 GetRaycastedMousePosition() {
        Vector3? pos = Vector3.zero;
        if (
        RaycastFromScreenIntoScene(ref pos,
                                   cam.ScreenToWorldPoint(Input.mousePosition),
                                   cam.transform.forward,
                                   BattleManager.singleton.tileLayer)
        ) {
            Debug.Log(pos);
        }
    }
    */
}
