using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class Lieu : MonoBehaviour {
    private string nom ;
    private List<GameObject> lieuxAccessibles;


    [SerializeField]
    private Button buttonPrefab;


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

    public GameManager GameManager
    {
        get
        {
            return gameManager;
        }

        set
        {
            gameManager = value;
        }
    }

    public List<GameObject> LieuxAccessibles
    {
        get
        {
            return lieuxAccessibles;
        }

        set
        {
            lieuxAccessibles = value;
        }
    }

    public void EnableButton()
    {
        Debug.Log("ENABLE BUTTONS");
        for (int i = 0; i < LieuxAccessibles.Count; i++)
        {
            Button bouger = Instantiate(buttonPrefab, new Vector3(100 * i, 0, 0), Quaternion.identity);
            Text choiceText = bouger.GetComponentInChildren<Text>();
            choiceText.text = LieuxAccessibles[i].GetComponent<Lieu>().Nom;
            bouger.onClick.AddListener(delegate {
                GameManager.SetDecor(LieuxAccessibles[i].name);

            });

        }
    }

    // Use this for initialization
    void Start () { //dès qu'on est enable on instancie les boutons
      
		
	}
   

    // Update is called once per frame
    void Update () {

        if(transform.gameObject.activeSelf)
        {
            // display buttons vers les destinations
        }
	}
}
