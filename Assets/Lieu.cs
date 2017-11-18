﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class Lieu : MonoBehaviour {
    private string nom ;
    public GameObject[] lieuxAccessibles;
  

   [SerializeField]
    private Button buttonPrefab;

    [SerializeField]
    private Canvas canvas;
   public GameManager gameManager;

    public string Nom
    {
        get
        {
            return nom;
        }

        set
        {
            nom = value;
        }
    }

    // Use this for initialization
    void Start () { //dès qu'on est enable on instancie les boutons
       for (int i=0;i< lieuxAccessibles.Length;i++)
        {
            float x=canvas.GetComponent<RectTransform>().rect.width;
            Button bouger=Instantiate(buttonPrefab,new Vector3(x/lieuxAccessibles.Length*i,0,0),Quaternion.identity);
            Text choiceText = bouger.GetComponentInChildren<Text>();
            choiceText.text = lieuxAccessibles[i].GetComponent<Lieu>().Nom;
            bouger.onClick.AddListener(delegate {
                gameManager.SetDecor(lieuxAccessibles[i].name); 
                
            });
            
        }
		
	}
   

    // Update is called once per frame
    void Update () {

        if(transform.gameObject.activeSelf)
        {
            // display buttons vers les destinations
        }
	}
}