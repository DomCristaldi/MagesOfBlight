using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Camera))]
public class BattleCameraController : MonoBehaviour {

    BattleCameraController singleton = null;

    Camera cam;

    Vector3 dragMarkerPos;

    Vector3 prevMousePos;
    Plane projectionPlane;
    Ray mouseRay;

    public float zoomAmount = 5.0f;
    public float closestZoom = 3.0f;
    public float farthestZoom = 7.0f;
    public float zoomScaling = 6.0f;
    public float zoomSpeed = 1.0f;

    [Space]
    public AnimationCurve cameraAngleCurve;
    public float cameraRotateSpeed = 4.0f;
    private Quaternion cameraRot;

    public float cameraAngleDown;
    /*
    private Vector3 cameraAngle{
        set { }
    }
    */


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

        

        //AssignCameraAngle();
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

        AssignCameraAngle();
        AdjustCamera();

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

        float deltaZoom = InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.Zoom);
        zoomAmount += deltaZoom * zoomScaling;
        zoomAmount = Mathf.Clamp(zoomAmount, closestZoom, farthestZoom);


        //transform.Translate(Vector3.forward * zoomAmount, Space.Self);
        //cam.orthographicSize = zoomAmount;
        cam.orthographicSize = Mathf.Lerp(cam.orthographicSize,
                                          zoomAmount,
                                          zoomSpeed * Time.deltaTime);
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

    private void AssignCameraAngle() {
        //Quaternion camRot = Quaternion.Euler(cameraAngleDown, 0.0f, 0.0f);

        float lerpAmount = 1.0f - ((zoomAmount - closestZoom) / (farthestZoom - closestZoom));

        cameraAngleDown = 90.0f * cameraAngleCurve.Evaluate(lerpAmount);

        Quaternion camRot = Quaternion.Euler(cameraAngleDown, 0.0f, 0.0f);


        cameraRot = camRot;
    }

    private void AdjustCamera() {
        //cam.transform.rotation = cameraRot;
        cam.transform.rotation = Quaternion.Slerp(cam.transform.rotation,
                                                  cameraRot,
                                                  cameraRotateSpeed * Time.deltaTime);

    }

    /*
    private void AssignCameraAngle(float angleX = 0.0f, float angleY = 0.0f, float angleZ = 0.0f) {
        cam.transform.rotation = Quaternion.Euler(angleX, angleY, angleZ);
    }
    */
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
