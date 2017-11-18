using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Actor : MonoBehaviour {    public enum CharacterEmotion
    { NORMAL, SPECIAL }
    CharacterEmotion characterEmo;
    public Sprite[] sprites;
    SpriteRenderer spriteRender;
    private int sens;//0gauche 1droite 2gauche coupé 3droitecoupé
    private int positionNum; // 0 tout à gauche 3 tout à droite
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


    // Use this for initialization
    void Awake() {
        this.characterEmo = CharacterEmotion.NORMAL;
        this.spriteRender = GetComponent<SpriteRenderer>();
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
    // Update is called once per frame
    void Update () {
		
	}
}
