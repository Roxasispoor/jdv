using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {
    public GameObject[] prefabsActors;
    public List<GameObject> listeActors = new List<GameObject>();
    //  public GameObject[] prefabDecor;
    public List<GameObject> listeDecor;
    public Vector3[] positionPersoStandard = new Vector3[4];


    // Use this for initialization
    void Start()
    {
        for (int i = 0; i < prefabsActors.Length; i++)
        {
            GameObject newActor = Instantiate(prefabsActors[i]);

            newActor.SetActive(false);
            newActor.name = prefabsActors[i].name;
            listeActors.Add(newActor);

            //bool activeSelf
        }
        for (int i = 0; i < listeDecor.Count; i++) //on enlève tout les décors
        {
              listeDecor[i].SetActive(false);
          }
    }

    public void SetDecor(string decorName)
    {
        foreach (GameObject decor in listeDecor)
        {

            if(decor.name==decorName)
            {
                decor.SetActive(true);    
            }
            else
            {
                decor.SetActive(false);
            }
        }
    }
    public void PlaceActor(string actorName,int position)
    {
        foreach (GameObject actor in listeActors)
        {
            if (actor.name==actorName)
            {
                actor.SetActive(true);
                actor.transform.position.Set(positionPersoStandard[position].x, positionPersoStandard[position].y, positionPersoStandard[position].z);

                actor.GetComponent<Actor>().PositionNum=position; // on le place au bon endroit dans le script
               

            }

        }
    }

    public void Flush()
    {
        foreach (GameObject actor in listeActors)
        {
            actor.transform.gameObject.SetActive(false);
        }

    }
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
