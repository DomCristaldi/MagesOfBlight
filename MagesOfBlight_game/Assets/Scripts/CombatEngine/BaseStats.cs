using UnityEngine;
using System.Collections;

public class BaseStats : MonoBehaviour {

    public enum ActionWindow {
        Closed = 0,
        Block = 1,
        Redirect = 2,
    }

    private ActionWindow _currentActionWindow;
    public ActionWindow currentActionWindow {
        get { return _currentActionWindow; }
    }

	public float maxHealth;
	public float currentHealth;
	public float maxBlight;
	public float currentBlight;



	protected virtual void Awake () {
		currentHealth = maxHealth;
		currentBlight = maxBlight / 2f;
	}

    protected virtual void Update() {
        HandleActionWindow();
    }

	public virtual void TakeDamage (float amount) {
		currentHealth -= amount;
	}

    public virtual void SetActionWindow(ActionWindow setting) {
        _currentActionWindow = setting;
    }

    protected virtual void HandleActionWindow() {
        switch (_currentActionWindow) {
            case ActionWindow.Closed:
                ClosedWindowProtocol();
                break;
            case ActionWindow.Block:
                BlockWindowProtocol();
                break;
            case ActionWindow.Redirect:
                RedirectWindowProtocol();
                break;
        }
    }

    protected virtual void ClosedWindowProtocol() {

    }

    protected virtual void BlockWindowProtocol() {

    }

    protected virtual void RedirectWindowProtocol() {

    }
}
