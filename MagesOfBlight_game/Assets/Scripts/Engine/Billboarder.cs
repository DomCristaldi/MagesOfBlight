using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class Billboarder : MonoBehaviour
{

    Transform tf;

    void Awake()
    {
        tf = GetComponent<Transform>();
    }

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        FaceCamera();
    }

    private void FaceCamera()
    {
        tf.rotation = GetReverseRotation(Camera.main.transform.rotation);
    }

    private Quaternion GetReverseRotation(Quaternion inQuat)
    {
        return new Quaternion(-1.0f * inQuat.x,
                              -1.0f * inQuat.y,
                              -1.0f * inQuat.z,
                              -1.0f * inQuat.w
                              );
    }

}