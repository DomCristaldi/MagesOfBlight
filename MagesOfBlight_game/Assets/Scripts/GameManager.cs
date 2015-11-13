using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

    private static GameManager _singleton;

    public static GameManager singleton {
        get { return _singleton; }
    }

    public BattleManager battleMan;

    void Awake() {
        if (_singleton == null) {
            _singleton = this;
        }
        else { Destroy(this); }
    }

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
