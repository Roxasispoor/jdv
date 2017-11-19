using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerScript : MonoBehaviour {

	[SerializeField]
	private BarStat victorness;
	void Start () {
		AddVictorness (8f);
		SubstractVictorness(4f);
	}
	/*
	private void Awake()
	{
		victorness.initialize;
	}
	*/
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.Q)) 
		{
			AddVictorness(1f);
		}

		if (Input.GetKeyDown(KeyCode.W)) 
		{
			SubstractVictorness(1f);
		}

	}

	public void AddVictorness ( float x )
	{
		if (victorness.CurrentVal * 8 + x > 8)
		{
			victorness.CurrentVal = 1;
		}
		else
		{
			victorness.CurrentVal += x / 8;
		}
	}

	public void SubstractVictorness ( float x )
	{
		if (victorness.CurrentVal * 8 - x < 0)
		{
			victorness.CurrentVal = 0;
		}
		else
		{
			victorness.CurrentVal -= x / 8;
		}
	}

}
