using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class BarScript : MonoBehaviour {
	private float fillAmount;
	public float Value 
	{
		set {
			fillAmount = value;
		}
	}

	[SerializeField]
	private Image content;

	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () 
	{
		HandleBar ();
	}
	private void HandleBar()
	{
		if (fillAmount != content.fillAmount) 
		{
			content.fillAmount = fillAmount;
		}
	}
}
