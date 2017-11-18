using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;

public class InkleManager : MonoBehaviour {
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

    public Story Story
    {
        get
        {
            return story;
        }

        set
        {
            story = value;
        }
    }

    void Start()
    {
        gameManager = GetComponent<GameManager>();
        StartStory();
    }

    void StartStory()
    {
        Story = new Story(inkJSONAsset.text);
        // on bind les fonctions ink
        Story.BindExternalFunction("PlaceActor", (string actorName, int position) =>
         {
             gameManager.PlaceActor(actorName, position);
         });
        Story.BindExternalFunction("Flush", () => {
            gameManager.Flush();
        });
        Story.BindExternalFunction("RemoveActor", (string actorName) =>
         {
             gameManager.RemoveActor(actorName);
         });
        Story.BindExternalFunction("SetDecor", (string decorName) =>
        {
            gameManager.SetDecor(decorName);
        });
        Story.BindExternalFunction("SetStatus", (int status, string actorName) =>
         {
             gameManager.SetStatus(status, actorName);
         });
       

        RefreshView();
    }

    void RefreshView()
    {
        RemoveChildren();

        while (Story.canContinue)
        {
            
            string text = Story.Continue().Trim();
            CreateContentView(text);
        }
        
        if (Story.currentChoices.Count > 0)
        {
            
            for (int i = 0; i < Story.currentChoices.Count; i++)
            {
                Choice choice = Story.currentChoices[i];
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
        Story.ChooseChoiceIndex(choice.index);
        RefreshView();
    }

    void CreateContentView(string text)
    {
        Text storyText = Instantiate(textPrefab) as Text;
        storyText.text = text;
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
	void Update () {
		
	}
}
