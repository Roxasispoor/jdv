using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {
    public GameObject[] prefabsActors;
    public List<GameObject> listeActors = new List<GameObject>(); 

    // Use this for initialization
    void Start () {
        for(int i=0;i<prefabsActors.Length;i++)
        {
            GameObject newActor = Instantiate(prefabsActors[i]);
            newActor.SetActive(false);
            newActor.name = prefabsActors[i].name;
            listeActors.Add(newActor);
           
            
            //bool activeSelf
        }
		
	}

    public void instanciateActors()
    {

    }
	
	// Update is called once per frame
	void Update () {
		
	}
    public void ChangeState()
    { }
}
