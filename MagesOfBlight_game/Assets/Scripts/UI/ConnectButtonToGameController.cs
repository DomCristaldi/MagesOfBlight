using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ConnectButtonToGameController : MonoBehaviour {

    Button butt;

    void Awake() {
        butt = GetComponent<Button>();
    }

	// Use this for initialization
	void Start () {
        butt.onClick.AddListener(() => { SceneTransitionHandler.singleton.LoadNextLevel(); });
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
