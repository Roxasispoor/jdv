using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

[Serializable]
public class BarStat  {
	[SerializeField]
	private BarScript bar;
	[SerializeField]
	private float currentVal;

	public float CurrentVal 
	{
		get {
			return currentVal ;
		}
		set {
			this.currentVal = value;
			bar.Value = currentVal;
		}
	} 
	/*
	public void initialize()
	{
		this.currentVal = currentVal;
	}
	*/
}
