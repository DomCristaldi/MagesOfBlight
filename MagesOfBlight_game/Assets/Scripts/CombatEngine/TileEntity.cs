using UnityEngine;
using System.Collections;

[AddComponentMenu("Scripts/BattleEngine/Tiles/Entities/TileEntity")]
public class TileEntity : MonoBehaviour {

    protected BattleManager battleManRef;

    public GameObject model;

    protected Transform modelTf;
    protected Animator modelAnim;

    protected virtual void Awake() {
        if (model != null) {
            modelTf = model.GetComponent<Transform>();
            modelAnim = model.GetComponent<Animator>();
        }
    }

	// Use this for initialization
	protected virtual void Start () {
        battleManRef = BattleManager.singleton;

	}
	
	// Update is called once per frame
	protected virtual void Update () {
	
	}
    /*
    public virtual void ModelLookAt(Vector3 direc) {
        modelTf.localRotation = Quaternion.LookRotation(direc, modelTf.up);
    }
    */
}
