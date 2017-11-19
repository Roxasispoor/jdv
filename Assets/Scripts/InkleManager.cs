using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;

public class InkleManager : MonoBehaviour {
    private GameManager gameManager;
    [SerializeField]
	private TextAsset inkJSONAsset;
	[SerializeField]
	private GameObject Victor;
    private Story story;

    [SerializeField]
    private Canvas canvas;

    // UI Prefabs
    [SerializeField]
    private Text textPrefab;
    [SerializeField]
    private Button buttonPrefab;

    public Dictionary<string,Color> textColor = new Dictionary<string, Color> { };
    public Color textDavis;
    public Color textAbi;
    public Color textAlfred;
    public Color textBarman;
    public Color textBigBerta;
    public Color textDaughter;
    public Color textDetective;
    public Color textMayor;
    public Color textPhilippe;
    public Color textScarface;

    public Dictionary<string, AudioClip[]> textAudio = new Dictionary<string, AudioClip[]> { };
    public AudioClip[] AudioDavis;
    public AudioClip[] AudioAbi;
    public AudioClip[] AudioAlfred;
    public AudioClip[] AudioBarman;
    public AudioClip[] AudioBigBerta;
    public AudioClip[] AudioDaughter;
    public AudioClip[] AudioDetective;
    public AudioClip[] AudioMayor;
    public AudioClip[] AudioPhilippe;
    public AudioClip[] AudioScarface;

    void InitializeColor()
    {
        textColor["J.Davis"] = textDavis;
        //textColor.Add("J.Davis", textDavis);
        textColor.Add("Abigail", textAbi);
        textColor.Add("Alfred", textAlfred);
        textColor.Add("S.O'Brien", textBarman);
        textColor.Add("Berta", textBigBerta);
        textColor.Add("E.Ferguson", textDaughter);
        textColor.Add("L.Lawson", textDetective);
        textColor.Add("A.Ferguson", textMayor);
        textColor.Add("P.Van Herl", textPhilippe);
        textColor.Add("Scarface", textScarface);

    }
    void InitializeSound()
    {
        //textColor["J.Davis"] = textDavis;
        textAudio.Add("J.Davis", AudioDavis);
        textAudio.Add("Abigail", AudioAbi);
        textAudio.Add("Alfred", AudioAlfred);
        textAudio.Add("S.O'Brien", AudioBarman);
        textAudio.Add("Berta", AudioBigBerta);
        textAudio.Add("E.Ferguson", AudioDaughter);
        textAudio.Add("L.Lawson", AudioDetective);
        textAudio.Add("A.Ferguson", AudioMayor);
        textAudio.Add("P.Van Herl", AudioPhilippe);
        textAudio.Add("Scarface", AudioScarface);

    }


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

    void Start()
    {
        InitializeColor();
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
        Story.BindExternalFunction("SetStatus", ( string actorName, int status) =>
         {
             gameManager.SetStatus(actorName,status);
         });

		Story.BindExternalFunction("AddVictorness", ( float quantity) =>
			{
				Victor.GetComponent<PlayerScript>().AddVictorness(quantity);
			});

		Story.BindExternalFunction("SubstractVictorness", ( float quantity) =>
			{
				Victor.GetComponent<PlayerScript>().SubstractVictorness(quantity);
			});
		
        RefreshView();
    }

    public void RefreshView()
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
            yield return new WaitForSeconds(0.1f);
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

            foreach (GameObject lieu in gameManager.listeDecor)
            {
                if (lieu.activeSelf && !gameManager.ActiveButton)
                {
                    lieu.GetComponent<Lieu>().EnableButton();
                }
            }
        }
     
    }

    void OnClickChoiceButton(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
        RefreshView();
    }

    string WhoSpeak(string line)
    {
        string[] splited = line.Split(':');
        return splited[0];

    }

    void CreateContentView(string text)
    {
        Text storyText = Instantiate(textPrefab) as Text;
        storyText.text = text;
        string speaker = WhoSpeak(text);
        Debug.Log(speaker);
        try
        {
            storyText.color = textColor[speaker];

            gameObject.GetComponent<AudioSource>().clip = textAudio[speaker][Random.Range(0, textAudio.Count)];
            gameObject.GetComponent<AudioSource>().Play();

        }
        catch (KeyNotFoundException)
        {
            if (speaker[0].Equals('(')){
                storyText.fontStyle = FontStyle.Italic;
            }
            else
            {
                storyText.fontStyle = FontStyle.Normal;
            }
        }

        RemoveChildren();
        storyText.transform.SetParent(Canvas.transform, false);

    }

    Button CreateChoiceView(string text)
    {
        Button choice = Instantiate(buttonPrefab) as Button;
        choice.transform.SetParent(Canvas.transform, false);

        Text choiceText = choice.GetComponentInChildren<Text>();
        choiceText.text = text;

        HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
        layoutGroup.childForceExpandHeight = false;

        return choice;
    }

    void RemoveChildren()
    {
        int childCount = Canvas.transform.childCount;
        for (int i = childCount - 1; i >= 0; --i)
        {
            GameObject.Destroy(Canvas.transform.GetChild(i).gameObject);
        }
    }


    // Update is called once per frame
    void Update()
    {

    }
}
