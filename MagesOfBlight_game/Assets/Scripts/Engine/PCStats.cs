using UnityEngine;
using System.Collections;

public class PCStats : MonoBehaviour {

	public static AvonStats avonStats;
	public static NuriaStats nuriaStats;
	public static SteinStats steinStats;

    void Start () {
        TransitionStatHandler.SetStats();
    }

}
