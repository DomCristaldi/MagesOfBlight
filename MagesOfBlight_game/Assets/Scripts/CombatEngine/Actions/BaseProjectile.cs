using UnityEngine;
using System.Collections;

public class BaseProjectile : MonoBehaviour {

	public Transform target;
	public float speed;
	public float damage;

	public bool CheckProximity () {
		return (Vector3.Distance(target.position, transform.position) < speedPerStep);
	}

	float speedPerStep {
		get { return speed * Time.deltaTime; }
	}

	public virtual void DealDamage () {
		BaseStats targetStats = target.GetComponent<BaseStats>();
		if (targetStats != null) {
			targetStats.TakeDamage(damage);
		}
	}

	public virtual void DestroySelf () {
		Destroy(gameObject);
	}

}
