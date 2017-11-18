using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerScript : MonoBehaviour {

	[SerializeField]
	private BarStat victorness;
	public int test = 0;
	void Start () {

	}
	/*
	private void Awake()
	{
		victorness.initialize;
	}
	*/
	// Update is called once per frame
	void Update () {
		test += 1;
		if ( test == 100)
		{
			AddVictorness (2);
		}
		if ( test == 300)
		{
			AddVictorness (2);
		}
		if (Input.GetKeyDown(KeyCode.Q)) 
		{
			victorness.CurrentVal -= 0.1f;
		}

		if (Input.GetKeyDown(KeyCode.W)) 
		{
			victorness.CurrentVal += 0.1f;
		}

	}

	void AddVictorness ( int n )
	{
		if (victorness.CurrentVal * 8 + n > 8)
		{
			victorness.CurrentVal = 1;
		}
		else
		{
			victorness.CurrentVal += n / 8;
		}
	}

	void SubstractVictorness ( int n )
	{
		if (victorness.CurrentVal * 8 - n < 0)
		{
			victorness.CurrentVal = 0;
		}
		else
		{
			victorness.CurrentVal -= n / 8;
		}
	}

}
