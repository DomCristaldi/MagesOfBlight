using UnityEngine;
using System.Collections;

public class TransitionStatHandler : MonoBehaviour {

    static float steinStartHealth = 100;
    static float steinStartBlight = 20;
    static float avonStartHealth = 100;
    static float avonStartBlight = 30;
    static float nuriaStartHealth = 100;
    static float nuriaStartBlight = 40;

    static float healthRecovery = 30;
    static float blightRecovery = 15;

    static float avonCurrentHealth;
    static float avonCurrentBlight;
    static float nuriaCurrentHealth;
    static float nuriaCurrentBlight;
    static float steinCurrentHealth;
    static float steinCurrentBlight;

    static float avonSceneHealth;
    static float avonSceneBlight;
    static float nuriaSceneHealth;
    static float nuriaSceneBlight;
    static float steinSceneHealth;
    static float steinSceneBlight;

    void Awake () {
        StartStats();
        DontDestroyOnLoad(gameObject);
    }

    public static void StartStats () {
        avonCurrentHealth = avonStartHealth;
        avonCurrentBlight = avonStartBlight;
        nuriaCurrentHealth = nuriaStartHealth;
        nuriaCurrentBlight = nuriaStartBlight;
        steinCurrentHealth = steinStartHealth;
        steinCurrentBlight = steinStartBlight;
    }

    public static void ResetStats () {
        avonCurrentHealth = avonSceneHealth;
        avonCurrentBlight = avonSceneBlight;
        nuriaCurrentHealth = nuriaSceneHealth;
        nuriaCurrentBlight = nuriaSceneBlight;
        steinCurrentHealth = steinSceneHealth;
        steinCurrentBlight = steinSceneBlight;
    }

    public static void SetStats () {
        PCStats.avonStats.currentHealth = avonSceneHealth = avonCurrentHealth;
        PCStats.avonStats.currentBlight = avonSceneBlight = avonCurrentBlight;
        PCStats.nuriaStats.currentHealth = nuriaSceneHealth = nuriaCurrentHealth;
        PCStats.nuriaStats.currentBlight = nuriaSceneBlight = nuriaCurrentBlight;
        PCStats.steinStats.currentHealth = steinSceneHealth = steinCurrentHealth;
        PCStats.steinStats.currentBlight = steinSceneBlight = steinCurrentBlight;
    }

    public static void RecoverStats () {
        avonCurrentHealth += healthRecovery;
        if (avonCurrentHealth > PCStats.avonStats.maxHealth) {
            avonCurrentHealth = PCStats.avonStats.maxHealth;
        }
        nuriaCurrentHealth += healthRecovery;
        if (nuriaCurrentHealth > PCStats.nuriaStats.maxHealth) {
            nuriaCurrentHealth = PCStats.nuriaStats.maxHealth;
        }
        steinCurrentHealth += healthRecovery;
        if (steinCurrentHealth > PCStats.steinStats.maxHealth) {
            steinCurrentHealth = PCStats.steinStats.maxHealth;
        }
        avonCurrentBlight -= blightRecovery;
        if (avonCurrentBlight < 1f) {
            avonCurrentBlight = 1f;
        }
        nuriaCurrentBlight -= blightRecovery;
        if (nuriaCurrentBlight < 1f) {
            nuriaCurrentBlight = 1f;
        }
        steinCurrentBlight -= blightRecovery;
        if (steinCurrentBlight < 1f) {
            steinCurrentBlight = 1f;
        }
    }

}
