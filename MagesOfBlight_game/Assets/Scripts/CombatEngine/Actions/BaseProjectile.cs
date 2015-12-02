using UnityEngine;
using System.Collections;

public class BaseProjectile : MonoBehaviour {

	public Transform target;
	public float speed;
    public float damage;
	public ProjectileAction action;

	public bool CheckProximity () {
		return (Vector3.Distance(target.position, transform.position) < speedPerStep);
	}

	float speedPerStep {
		get { return speed * Time.deltaTime; }
	}

	void Update () {
		transform.position = Vector3.MoveTowards(transform.position, target.position, speedPerStep);
	}

	public virtual void DealDamage () {
		TileAgent targetAgent = target.GetComponent<TileAgent>();
		if (targetAgent != null && targetAgent.stats != null) {
			targetAgent.stats.TakeDamage(damage);
		}
        if (targetAgent as AITileAgent != null) {
            (targetAgent as AITileAgent).SetAggro(BattleManager.singleton.selectedAgent);
        }
	}

	public virtual void DestroySelf () {
		action.projectile = null;
		Destroy(gameObject);
	}

}
