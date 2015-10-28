using UnityEngine;
using System.Collections;

public class BaseStats : MonoBehaviour {

	public float maxHealth;
	public float currentHealth;

	void Awake () {
		currentHealth = maxHealth;
	}

	public virtual void TakeDamage (float amount) {
		currentHealth -= amount;
	}

}
