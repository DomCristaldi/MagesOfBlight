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
        CheckInputs();
	}

    /// <summary>
    /// Tell the Scene State Machine to transition to the next level
    /// </summary>
    public void LoadNextLevel() {
        if (Application.isEditor && !onlyInBuild) {
            levelGraph.SetTrigger("NextLevelTrig");
        }
        else {
            Debug.Log("Loading Next Scene");
        }
    }

    /// <summary>
    /// Use Application.Load to load the current scene
    /// </summary>
    public void ReloadLevel() {
        Application.LoadLevel(currentSceneName);
    }

    private void CheckInputs() {
        if (InputHandler.singleton != null) {
            CheckSkipScene();
            CheckReloadLevel();
        }
    }

    private void CheckSkipScene() {
        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.SkipLevel) != 0.0f) {
            LoadNextLevel();
        }
    }

    private void CheckReloadLevel() {
        if (InputHandler.singleton.controls.GetAxis(InputHandler.AxisKey.ReloadLevel) != 0.0f) {
            ReloadLevel();
        }
    }
}
