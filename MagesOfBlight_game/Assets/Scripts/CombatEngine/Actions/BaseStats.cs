using UnityEngine;
using System.Collections;

public class BaseStats : MonoBehaviour {

	public float maxHealth;
	public float currentHealth;

	public virtual void TakeDamage (float amount) {
		currentHealth -= amount;
	}

}
