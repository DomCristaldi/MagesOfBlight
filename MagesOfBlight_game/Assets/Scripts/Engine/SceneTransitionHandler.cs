using UnityEngine;
using System.Collections;


public class SceneTransitionHandler : MonoBehaviour {

    private static SceneTransitionHandler singleton;

    void Awake() {
        if (singleton == null) { singleton = this; }
        else { Destroy(this.gameObject); }

        DontDestroyOnLoad(gameObject);
    }

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
