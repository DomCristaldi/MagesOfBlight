using UnityEngine;
using System.Collections;


public class SceneTransitionHandler : MonoBehaviour {

    private static SceneTransitionHandler singleton;
    public Animator levelGraph;

    void Awake() {
        if (singleton == null) { singleton = this; }
        else { Destroy(this.gameObject); }

        if (levelGraph == null) {
            levelGraph = GetComponent<Animator>();
        }
        levelGraph.enabled = false;

        DontDestroyOnLoad(gameObject);
    }

	// Use this for initialization
	void Start () {
        levelGraph.enabled = true;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
