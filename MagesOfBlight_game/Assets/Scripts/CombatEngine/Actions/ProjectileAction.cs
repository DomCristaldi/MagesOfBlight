using UnityEngine;
using System.Collections;
using JBirdEngine;

[CreateAssetMenuAttribute]
public class ProjectileAction : LineBaseAction {

	public BaseProjectile projectilePrefab;
	public float waitTimeAfterHit;

	BaseProjectile projectile;
	bool waitOver;

	public override void Init () {
		base.Init ();
		tileCheckFlags = EnumHelper.CombineFlags<TileCheckFlags>(TileCheckFlags.agentOccupied);
		projectile = null;
		waitOver = false;
	}

	protected virtual void CreateProjectile () {
		projectile = (BaseProjectile)Instantiate(projectilePrefab, BattleManager.singleton.selectedAgent.transform.position, Quaternion.identity);
		if (projectile == null) {
			Debug.LogError("Error saving projectile instance!");
			return;
		}
		projectile.target = BattleManager.singleton.targetTile.entityOnTile.transform;
	}

	IEnumerator WaitAfterHit () {
		waitOver = false;
		yield return new WaitForSeconds(waitTimeAfterHit);
		waitOver = true;
		yield break;
	}

	public override bool DoAction () {
		if (projectile == null) {
			CreateProjectile();
		}
		if (projectile.CheckProximity()) {
			projectile.DealDamage();
			projectile.DestroySelf();
			BattleManager.singleton.StartCoroutine(WaitAfterHit());
		}
		if (waitOver) {
			return ActionSuccess();
		}
		return false;
	}

}
