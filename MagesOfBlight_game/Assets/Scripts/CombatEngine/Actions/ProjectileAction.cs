using UnityEngine;
using System.Collections;
using JBirdEngine;

[CreateAssetMenuAttribute]
public class ProjectileAction : LineBaseAction {

	public BaseProjectile projectilePrefab;
    public float waitTimeBeforeCast;
	public float waitTimeAfterHit;
	public BaseProjectile projectile;

    bool castingStart;
    bool castingFinished;
	bool projectileMade;
	bool projectileHit;
	bool waitOver;
    bool castOver;

	public override void Init () {
		base.Init ();
		tileCheckFlags = EnumHelper.CombineFlags<TileCheckFlags>(TileCheckFlags.agentOccupied);
		projectile = null;
        castingStart = false;
        castingFinished = false;
		projectileMade = false;
		projectileHit = false;
		waitOver = false;
        castOver = false;
	}

	protected virtual void CreateProjectile () {
		projectile = (BaseProjectile)Instantiate(projectilePrefab, BattleManager.singleton.selectedAgent.transform.position, Quaternion.identity);
		if (projectile == null) {
			Debug.LogError("Error saving projectile instance!");
			return;
		}
		projectileMade = true;
		projectile.action = this;
		projectile.target = BattleManager.singleton.targetTile.entityOnTile.transform;
        projectile.damage = damage;
	}

    IEnumerator WaitBeforeCast () {
        castOver = false;
        yield return new WaitForSeconds(waitTimeBeforeCast);
        castOver = true;
        yield break;
    }

	IEnumerator WaitAfterHit () {
		waitOver = false;
		yield return new WaitForSeconds(waitTimeAfterHit);
		waitOver = true;
		yield break;
	}

	public override bool DoAction () {
		if (!projectileMade && projectile == null) {
            if (!castingStart) {
                BattleManager.singleton.StartCoroutine(WaitBeforeCast());
                castingStart = true;
            }
            if (castOver) {
                CreateProjectile();
            }
		}
		else if (!projectileHit && projectile.CheckProximity()) {
			projectileHit = true;
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
