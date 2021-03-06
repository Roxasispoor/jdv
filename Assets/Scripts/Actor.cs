﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Actor : MonoBehaviour {    public enum CharacterEmotion
    { NORMAL, SPECIAL }
     CharacterEmotion characterEmo;
    public Sprite[] sprites;
    SpriteRenderer spriteRender;
    private int status=0;
    public GameObject lieu;
    public InkleManager inkleManager;//weird


    private int sens;//0gauche 1droite 2gauche coupé 3droitecoupé
    public int positionNum; // 0 tout à gauche 3 tout à droite
    public CharacterEmotion CharacterEmo
    {
        get
        {
            return characterEmo;
        }

        set
        {
            characterEmo = value;
        }
    }

    public int PositionNum
    {
        get
        {
            return positionNum;
        }

        set
        {
            positionNum = value;
        }
    }

    public int Status
    {
        get
        {
            return status;
        }

        set
        {
            status = value;
        }
    }

    public GameObject Lieu
    {
        get
        {
            return lieu;
        }

        set
        {
            lieu = value;
        }
    }

    public InkleManager InkleManager
    {
        get
        {
            return inkleManager;
        }

        set
        {
            inkleManager = value;
        }
    }


    // Use this for initialization
    void Awake() {
        this.characterEmo = CharacterEmotion.NORMAL;
        this.spriteRender = GetComponent<SpriteRenderer>();
        this.spriteRender.sprite = sprites[0];// a modifier avec le numéro du normal
    }
    public void ChangeState(string name)
    {
        StartCoroutine(name + "State");
    }
    IEnumerator NORMALState()
        {
        this.characterEmo = CharacterEmotion.NORMAL;
        spriteRender.sprite = sprites[0];
        yield return null;

        }
    IEnumerator SPECIALState()
    {
        this.characterEmo=CharacterEmotion.SPECIAL;
        spriteRender.sprite = sprites[0];
        yield return null;

    }

void OnMouseOver()
    {
        Debug.Log("AHHHHHH");
        if (Input.GetMouseButtonDown(0)){
           
            InkleManager.Story.ChoosePathString(lieu.name + "." + this.name + "_" + status);
            InkleManager.RefreshView();
              //       inkleManager.Story.ChoosePathString(lieu.name + "." + this.name + "_" + status);
            // Whatever you want it to do.
        }
    }
    // Update is called once per frame
    void Update () {
		
	}
}
