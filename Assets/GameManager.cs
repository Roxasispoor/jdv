using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {
    public GameObject[] prefabsActors;
    public List<GameObject> listeActors = new List<GameObject>();
    public List<GameObject> listeDecor;
    public Vector3[] positionPersoStandard = new Vector3[4];
    public GameObject[] prefabsDecor;

    // Use this for initialization
    void Start()
    {
       //On initialise les lieux, puis les acteurs
       for (int i=0;i<prefabsDecor.Length;i++)
        {
            GameObject newDecor = Instantiate(prefabsDecor[i]);
            newDecor.SetActive(false);
            newDecor.name = prefabsDecor[i].name;
            newDecor.GetComponent<Lieu>().GameManager = this;
            listeDecor.Add(newDecor);

        }
        for (int i = 0; i < prefabsActors.Length; i++)
        {
            GameObject newActor = Instantiate(prefabsActors[i]);

            
            newActor.SetActive(false);
            newActor.name = prefabsActors[i].name;
            listeActors.Add(newActor);

            newActor.GetComponent<Actor>().InkleManager = gameObject.GetComponent<InkleManager>();
              //bool activeSelf
        }
        for (int i = 0; i < listeDecor.Count; i++) //on enlève tout les décors
        {
              listeDecor[i].SetActive(false);
          }
        SetActorPlace("mayor", "manor_inside_night");
        SetActorPlace("detective", "manor_inside_night");
        SetActorPlace("alfred", "manor_outside");
        SetActorPlace("bigberta", "town");
        SetActorPlace("abi", "town");
        SetActorPlace("philippe", "manor_outside");
        SetActorPlace("barman", "pub");
        SetActorPlace("scarface", "backalley");
        SetActorPlace("daughter", "pub");

        SetPlaceFille("manor_inside_night", "manor_outside_night");
        SetPlaceFille("manor_inside_day", "manor_outside_day");
        SetPlaceFille("manor_outside_day","manor_inside_day");



        SetPlaceFille("manor_outside_night", "town");
        SetPlaceFille("manor_outside_day", "town");
        SetPlaceFille("town","manor_outside_day");

        SetPlaceFille("town", "pub");
        SetPlaceFille("pub", "town");

        SetPlaceFille("town", "backalley");
        SetPlaceFille("backalley", "town");

        SetPlaceFille("backalley", "pub");
        SetPlaceFille( "pub", "backalley");









        //On set les positions de chaque personnage

    }
    public void SetPlaceFille(string mere, string fille)
    {
        foreach (GameObject aMere in listeDecor)
        {
            if (aMere.name == mere)
            {

                foreach (GameObject lieuFille in listeDecor)
                {
                    if (lieuFille.name == fille)
                    {
                        aMere.GetComponent<Lieu>().LieuxAccessibles.Add(lieuFille);
                    }
                }
            }
        }
    }

    public void SetActorPlace(string actorName, string place)
    {
        foreach (GameObject actor in listeActors)
        {
            if (actor.name == actorName)
            {
                foreach(GameObject lieu in listeDecor)
                {
                    if(lieu.name==place)
                    {
                        actor.GetComponent<Actor>().Lieu = lieu;
                }
                }
            }
        }
    }

    /// <summary>
    /// change le statut narratif d'un personnage
    /// </summary>
    /// <param name="status"></param>
    /// <param name="actorName"></param>
    public void SetStatus( string actorName,int status)
    {
        foreach (GameObject actor in listeActors)
        {
            if (actor.name == actorName)
            {
                actor.GetComponent<Actor>().Status = status;
            }
        }
    }

    /// <summary>
    /// passe le decor a actif, load les personnages qui sont sur ce lieu
    /// </summary>
    /// <param name="decorName"></param>
    public void SetDecor(string decorName)
    {
        foreach (GameObject decor in listeDecor)
        {

            if(decor.name==decorName)
            {
                decor.SetActive(true);
                foreach (GameObject actor in listeActors)
                {
                    if(actor.GetComponent<Actor>().Lieu==decor)
                    {
                        actor.SetActive(true);
                        actor.transform.position = new Vector3(positionPersoStandard[actor.GetComponent<Actor>().PositionNum - 1].x, 
                            positionPersoStandard[actor.GetComponent<Actor>().PositionNum - 1].y, positionPersoStandard[actor.GetComponent<Actor>().PositionNum - 1].z);
                    }//j'active le personnage
                }
            }
            else
            {
                decor.SetActive(false);
            }
        }

    }
    /// <summary>
    /// place un actor dans la scène
    /// </summary>
    /// <param name="actorName"></param>
    /// <param name="position"></param>
    public void PlaceActor(string actorName,int position)
    {
        foreach (GameObject actor in listeActors)
        {
            if (actor.name==actorName)
            {
               
                actor.SetActive(true);
                actor.GetComponent<Actor>().PositionNum = position; // on le place au bon endroit dans le script

               
                actor.transform.position = new Vector3(positionPersoStandard[position - 1].x, positionPersoStandard[position - 1].y, positionPersoStandard[position - 1].z);
                //actor.transform.localScale=new Vector3(100, 100, 100);
               

            }

        }

    }
    /// <summary>
    /// supprime tous les acteurs de la scène
    /// </summary>
    public void Flush()
    {
        foreach (GameObject actor in listeActors)
        {
            actor.transform.gameObject.SetActive(false);
        }

    }
    /// <summary>
    /// supprime un acteur de la scene
    /// </summary>
    /// <param name="actorName"></param>
    public void RemoveActor(string actorName)
    {
        foreach (GameObject actor in listeActors)
        {
            if (actor.name == actorName)
            {
               actor.SetActive(false);
            }
        }
    }
	// Update is called once per frame
	void Update () {
		
	}

    /// <summary>
    /// Lis le contexte ink, décide vers quel noeud relancer?
    /// </summary>
    /// <param name="nomLieu"></param>
    public void NodeDecider(string nomLieu)
    {

    }

    /// <summary>
    /// permet de changer quel sprite afficher
    /// </summary>
    /// <param name="actorName"></param>
    /// <param name="mood"></param>
    public void ChangeState(string actorName ,string mood)
    { foreach(GameObject actor in listeActors )
        {
            if(actor.name==actorName)
            {
                actor.GetComponent<Actor>().ChangeState(mood);
            }
        }

    }
}
