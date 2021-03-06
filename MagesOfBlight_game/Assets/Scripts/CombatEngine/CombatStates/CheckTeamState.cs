﻿using UnityEngine;
using System.Collections;

/// <summary>
/// Handles switching the current acting 
/// </summary>

public class CheckTeamState : BaseCombatState {

    public CheckTeamState(BattleManager.CombatPhase thisCombatPhase, bool canUndo = false, bool canHoverGrid = false) : base(thisCombatPhase, canUndo, canHoverGrid) { }

    public override void InitState() {
        base.InitState();

        //Debug.Log("CHECKING TEAM");


        if (CheckEndBattle()) {//If the battle is going to end, don't bother dealing with the teams any more
            return;
        }

        battleManRef.RefreshPrevPhaseStack();

        if (battleManRef.GetCurrentTeam().TurnComplete()) {


            
            //***TODO: come back and make less specific***
            if (battleManRef.curCombatTeam == BattleManager.CombatTeam.Player) {
                battleManRef.playerTeam.RefreshTeam();

                battleManRef.ChangeActingTeam(BattleManager.CombatTeam.Enemy);
            }
            else if (battleManRef.curCombatTeam == BattleManager.CombatTeam.Enemy) {
                battleManRef.enemyTeam.RefreshTeam();

                battleManRef.ChangeActingTeam(BattleManager.CombatTeam.Player);
            }
            else {
                Debug.LogError("WE HAVE A PROBLEM");
            }
        }

        if (battleManRef.curCombatTeam == BattleManager.CombatTeam.Enemy) {
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.AISelection);
        }
        else if (battleManRef.curCombatTeam == BattleManager.CombatTeam.Player) {
            battleManRef.ChangeCombatState(BattleManager.CombatPhase.TileSelection);
        }
        else {
            Debug.LogError("CheckTeamState: Unknown team selected!");
        }
        
        
    }

    private bool CheckEndBattle() {

        if (BattleManager.singleton.enemyTeam.numberOfTeamMembers == 0
         || BattleManager.singleton.playerTeam.numberOfTeamMembers != 3)
        {

            BattleManager.singleton.ChangeCombatState(BattleManager.CombatPhase.ExitCombat);

            return true;
        }

        return false;
        /*
        if (BattleManager.singleton.enemyTeam.numberOfTeamMembers == 0) {



            return;
        }

        else if (BattleManager.singleton.playerTeam.numberOfTeamMembers == 0) {


            return;
        }
        */
    }

}
