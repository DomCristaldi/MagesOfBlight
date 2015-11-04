using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum Character {
	Avon,
	Nuria,
	Stein,
}

public enum Mood {
	Neutral,
	Angry,
}

[System.Serializable]
public class DialogueObject {

	public Character character;
	public Mood mood;
	public string line;
	public AudioClip audioClip;

	public Sprite sprite {
		get { return GetSprite(); }
	}

	private Sprite GetSprite () {
		foreach (CharacterMoodSprites playerCharacter in CharacterPortraitLibrary.singleton.characters) {
			if (playerCharacter.character == character) {
				foreach (MoodSprite moodSprite in playerCharacter.moodSprites) {
					if (moodSprite.mood == mood) {
						return moodSprite.sprite;
					}
				}
				return playerCharacter.defaultPortrait;
			}
		}
		return CharacterPortraitLibrary.singleton.defaultPortrait;
	}

}

[CreateAssetMenuAttribute]
public class Conversation : ScriptableObject {
	
	public List<DialogueObject> dialogue;

}
