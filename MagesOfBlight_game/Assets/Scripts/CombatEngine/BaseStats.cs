using UnityEngine;
using System.Collections;

public class BaseStats : MonoBehaviour {

	public float maxHealth;
	public float currentHealth;
	public float maxBlight;
	public float currentBlight;

	protected virtual void Awake () {
		currentHealth = maxHealth;
		currentBlight = maxBlight / 2f;
	}

	public virtual void TakeDamage (float amount) {
		currentHealth -= amount;
	}

}
