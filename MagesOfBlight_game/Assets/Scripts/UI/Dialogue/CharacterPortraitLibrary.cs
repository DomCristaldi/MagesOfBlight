using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using JBirdEngine;

[System.Serializable]
public class MoodSprite {

	public Mood mood;
	public Sprite sprite;

}

[System.Serializable]
public class CharacterMoodSprites {

	public Character character;
	public Sprite defaultPortrait;
	public List<MoodSprite> moodSprites;

}

[ExecuteInEditMode]
public class CharacterPortraitLibrary : MonoBehaviour {
	
	public static CharacterPortraitLibrary singleton;
	public Sprite defaultPortrait;
	public List<CharacterMoodSprites> characters;

	void Awake () {
		Singleton.ManageSingleton<CharacterPortraitLibrary>(this, ref singleton);
	}

}
