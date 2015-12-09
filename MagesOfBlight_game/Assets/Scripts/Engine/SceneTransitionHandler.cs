using UnityEngine;
using System.Collections;


public class SceneTransitionHandler : MonoBehaviour {

    public static SceneTransitionHandler singleton;
    public Animator levelGraph;

    public string currentSceneName;

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

        currentSceneName = Application.loadedLevelName;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    /// <summary>
    /// Tell the Scene State Machine to transition to the next level
    /// </summary>
    public void LoadNextLevel() {
        levelGraph.SetTrigger("NextLevelTrig");
    }

    /// <summary>
    /// Use Application.Load to load the current scene
    /// </summary>
    public void ReloadLevel() {
        Application.LoadLevel(currentSceneName);
    }
}
