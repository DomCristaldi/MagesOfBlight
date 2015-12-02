using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MainMenu : MonoBehaviour {

	public void Play(){
		Application.LoadLevel (1);
	}

	public void About(){
		
	}

	public void Quit(){
		Application.Quit ();
	}
}
