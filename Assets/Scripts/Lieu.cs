using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class Lieu : MonoBehaviour {
    private string nom ;
    public List<GameObject> lieuxAccessibles;

    public Vector3[] positionPersoStandard = new Vector3[4];

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

    public Canvas Canvas
    {
        get
        {
            return canvas;
        }

        set
        {
            canvas = value;
        }
    }

    public void EnableButton()
    {
        Debug.Log("ENABLE BUTTONS");
        if (LieuxAccessibles != null)
        {
            for (int i = 0; i < LieuxAccessibles.Count; i++)
            {
                //Button bouger = Instantiate(buttonPrefab, new Vector3(1 * i, 0, 0), Quaternion.identity);
                //Text choiceText = bouger.GetComponentInChildren<Text>();
                //choiceText.text = LieuxAccessibles[i].name;
                
                Button button = CreateButton(LieuxAccessibles[i].name);
                Debug.Log(i);

                button.onClick.AddListener(()=>
                {
                    print(i);
                GameManager.SetDecor(button.gameObject.name);

                });
            }
        }
    }

    Button CreateButton(string text)
    {
        Button button = Instantiate(buttonPrefab) as Button;
        button.gameObject.name = text;
        button.transform.SetParent(Canvas.transform, false);

        Text buttonText = button.GetComponentInChildren<Text>();
        buttonText.text = text;

        HorizontalLayoutGroup layoutGroup = button.GetComponent<HorizontalLayoutGroup>();
        layoutGroup.childForceExpandHeight = false;

        return button;
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
