﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;
using System;

public class InkleManager : MonoBehaviour
{
    private GameManager gameManager;
    [SerializeField]
    private TextAsset inkJSONAsset;
    private Story story;

    [SerializeField]
    private Canvas canvas;

    // UI Prefabs
    [SerializeField]
    private Text textPrefab;
    [SerializeField]
    private Button buttonPrefab;

    void Start()
    {
        gameManager = GetComponent<GameManager>();
        StartStory();
    }

    void StartStory()
    {
        story = new Story(inkJSONAsset.text);
        // on bind les fonctions ink
        story.BindExternalFunction("PlaceActor", (string actorName, int position) =>
        {
            gameManager.PlaceActor(actorName, position);
        });
        story.BindExternalFunction("Flush", () => {
            gameManager.Flush();
        });
        story.BindExternalFunction("RemoveActor", (string actorName) =>
        {
            gameManager.RemoveActor(actorName);
        });
        story.BindExternalFunction("SetDecor", (string decorName) =>
        {
            gameManager.SetDecor(decorName);
        });
        Story.BindExternalFunction("SetStatus", (int status, string actorName) =>
         {
             gameManager.SetStatus(status, actorName);
         });

        RefreshView();
    }

    int count = 0;

    IEnumerator Example()
    {
        while (count != 5)
        {
            count++;
            print(Time.time);
            Debug.Log("la");
            yield return new WaitForSeconds(2);
            print(Time.time);
        }
    }

    IEnumerator WaitForKeyDown(KeyCode keyCode)
    {
        Debug.Log("la");
        while (!Input.GetKeyDown(keyCode))
            yield return null;
    }

    void RefreshView()
    {
        RemoveChildren();

        StartCoroutine(DisplayTextOnSpace());
    }

    private IEnumerator DisplayTextOnSpace()
    {
        while (story.canContinue)
        {
            string text = story.Continue().Trim();
            yield return new WaitUntil(() => { return Input.GetKeyDown(KeyCode.Space); });
            //  Debug.Log(text);
            //StartCoroutine(WaitForKeyDown(KeyCode.Space));
            CreateContentView(text);
        }

        if (story.currentChoices.Count > 0)
        {
            for (int i = 0; i < story.currentChoices.Count; i++)
            {
                Choice choice = story.currentChoices[i];
                Button button = CreateChoiceView(choice.text.Trim());
                button.onClick.AddListener(delegate {
                    OnClickChoiceButton(choice);
                });
            }
        }
        else
        {
            Button choice = CreateChoiceView("End of story.\nRestart?");
            choice.onClick.AddListener(delegate {
                StartStory();
            });
        }
    }

    void OnClickChoiceButton(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
        RefreshView();
    }

    void CreateContentView(string text)
    {
        Text storyText = Instantiate(textPrefab) as Text;
        storyText.text = text;
        RemoveChildren();
        storyText.transform.SetParent(canvas.transform, false);

    }

    Button CreateChoiceView(string text)
    {
        Button choice = Instantiate(buttonPrefab) as Button;
        choice.transform.SetParent(canvas.transform, false);

        Text choiceText = choice.GetComponentInChildren<Text>();
        choiceText.text = text;

        HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
        layoutGroup.childForceExpandHeight = false;

        return choice;
    }

    void RemoveChildren()
    {
        int childCount = canvas.transform.childCount;
        for (int i = childCount - 1; i >= 0; --i)
        {
            GameObject.Destroy(canvas.transform.GetChild(i).gameObject);
        }
    }


    // Update is called once per frame
    void Update()
    {

    }
}
