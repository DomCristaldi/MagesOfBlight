using UnityEngine;
using System.Collections;

[AddComponentMenu("Scripts/Engine/Motor")]
[RequireComponent(typeof(Rigidbody))]
public class Motor_RigidBody : MonoBehaviour
{

    Transform tf;
    Rigidbody rigbod;

    public Vector3 desiredDirec;
    public Vector3 trueDirec;

    //properties to quickly access endpoint data of direction vectors
    public Vector3 desiredPoint
    {
        get
        {
            return tf.position + desiredDirec;
        }
    }
    public Vector3 truePoint
    {
        get
        {
            return tf.position + trueDirec;
        }
    }

    public Vector3 desiredPointNormalized
    {
        get
        {
            return tf.position + desiredDirec.normalized;
        }
    }
    public Vector3 truePointNormalized
    {
        get
        {
            return tf.position + trueDirec.normalized;
        }
    }
    /*
    [Header("Speed")]
    public float maxDesiredDirecMag = 2.0f;
    */
    public float moveSpeedModifier = 1.0f;

    public float redirectSpeed = 0.5f;

    protected virtual void Awake()
    {
        tf = GetComponent<Transform>();
        rigbod = GetComponent<Rigidbody>();
    }

    // Use this for initialization
    protected virtual void Start()
    {

    }

    // Update is called once per frame
    protected virtual void Update()
    {
        HandleMovement();

        Debug.DrawRay(tf.position, desiredDirec, Color.red);
        Debug.DrawRay(tf.position, trueDirec, Color.blue);

        //ApplyMovementFixed();
    }

    protected virtual void FixedUpdate()
    {
        ApplyMovementFixed();
    }

    //HANDLE ANY MODIFICATIONS THE MOTOR HAS TO MAKE TO MOVEMENT
    protected virtual void HandleMovement()
    {
        //trueDirec = desiredDirec;

        //Vector3 newDirec = Vector3.MoveTowards(truePoint, desiredPoint, redirectSpeed) - tf.position;

        //trueDirec = newDirec * (maxDesiredDirecMag * moveSpeedModifier);
        //trueDirec = newDirec * moveSpeedModifier;

        trueDirec = Vector3.MoveTowards(tf.position + trueDirec, tf.position + desiredDirec, redirectSpeed * Time.deltaTime) - tf.position;

        //rigbod.velocity = new Vector3(trueDirec.x, rigbod.velocity.y, trueDirec.z);
    }

    //APPLY THE MOVEMENT TO THE RIGID BODY
    protected virtual void ApplyMovementFixed()
    {//only do in FixedUpdate()
        rigbod.velocity = new Vector3(trueDirec.x, rigbod.velocity.y, trueDirec.z);
    }

    public virtual void InputDirec(Vector3 direc)
    {
        //desiredDirec = Vector3.ClampMagnitude(direc, maxDesiredDirecMag);
        desiredDirec = direc.normalized;
    }

    public virtual void InputPos(Vector3 pos)
    {
        InputDirec(pos - tf.position);
    }

    public virtual void KillMotor() {
        trueDirec = Vector3.zero;
        desiredDirec = Vector3.zero;
        rigbod.velocity = Vector3.zero;
    }
}
