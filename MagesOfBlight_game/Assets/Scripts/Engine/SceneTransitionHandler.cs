using UnityEngine;
using System.Collections;


public class SceneTransitionHandler : MonoBehaviour {

    private static SceneTransitionHandler singleton;
    public Animator levelGraph;

    public bool onlyInBuild = true;

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
        if (!Application.isEditor) {
            levelGraph.enabled = true;
        }

        else if (!onlyInBuild && Application.isEditor) {
            levelGraph.enabled = true;
        }
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
