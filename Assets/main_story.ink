EXTERNAL PlaceActor(ActorName, position)
EXTERNAL RemoveActor(ActorName)
EXTERNAL flush()
EXTERNAL SetDecor(DecorName)

->intro

==intro==
{SetDecor("black")}
“Avis de décès : 25 mai 1943”
J’appose ma signature sur le testament et le tend à mon client.
Mon travail est fini. Encore un, comme les autres, une banale affaire d’héritage. Un vieux mort dans son lit. Un fils, maire nanti de Topeka, une petite ville sans histoire. Une petite fille éplorée par la mort de son grand-père. Un manoir qui cri l’opulence, de ses colonnes en marbre à son majordome. Au centre la veillée funèbre du défunt, amis, famille, prêtre et tout le cortège des doléances. 
Une affaire comme les autres, qui me rapportera pas grand chose. 
//Intro sur fond noir, en fondu progressif sur le décor (on ne voit pas les persos).
->manor_inside_1
->DONE

=manor_inside_1
{SetDecor("manor_inside_night")}
“...et que son âme repose en paix auprès de notre Seigneur. Amen”
Tous: “Amen”
//Jack Davis apparaît à l’écran (sprite approché).
{PlaceActor("davis", 1)}
Ce maudit prêtre finit enfin par s’en aller, avec une partie des convives. 2h que je dois rester planté là à écouter sa litanie et à devoir attendre la fin de cette foutue cérémonie. C’est pas le job d’un notaire ça. Plus qu’à échanger les banalités d’usage, récupérer ma paye et me barrer de ce trou perdu du Kansas.
“Ah, monsieur Davis, veuillez m’excuser pour l’attente”.
(Archibald Ferguson, le maire. Il reste calme malgré les circonstances. Et pas le moins du monde désolé de m’avoir fait attendre).
//Apparition sprite rapproché maire
{PlaceActor("mayor", 2)}
J.Davis: “Pas de problème”
A.Ferguson: “Merci encore pour votre travail. Toute peine mérite son dû. Allez donc voir mon majordome il vous règlera votre salaire. Comptez-vous profiter de notre belle ville quelques jours ?”
J.Davis: “En aucun cas. Je compte reprendre la route dès ce soir”
“J’ai bien peur que ça ne soit pas possible, monsieur Davis.”
(Je me retourne pour voir mon interlocutrice)
//La détective apparaît à l’écran (toujours sprites approchés).
{PlaceActor("detective", 3)}
J.Davis: “Ah oui, et en quel honneur, madame..?”
?: ”Mademoiselle. Lynn Lawson, j’enquête sur le décès de M.Ferguson sénior”
(Une détective privée. Génial. Je hais les détectives. Toujours à fourrer leurs nez dans les affaires des autres.)
J.Davis: “Vraiment ?”
A.Ferguson: “Enfin mademoiselle, mon père est mort paisiblement dans son lit. C’était un homme d’affaires honnête qui a toujours oeuvré pour le bien de cette ville.”
L.Lawson: “Ses “affaires” présentent de sérieuses zones d’ombre monsieur Ferguson. Quand à sa mort “paisible”, les résultats de l’autopsie doivent encore le confirmer”
J.Davis: “Ben voyons !”
(Si un regard pouvait tuer…)
L.Lawson: “Monsieur Davis, vous..!”
“Veuillez m’excuser mais je crains que nous ayons un problème”
//Sprite rapproché du majordome qui apparaît à l’écran.
{PlaceActor("alfred", 4)}
(Queue de pie, gants blancs: aucun doute, il s’agit du majordome)
A.Ferguson: “Alfred ?”
(Seigneur, même son nom complète la panoplie. Pitié faites que le prochain invité ne s'appelle pas Bruce)
Alfred: “J’ai bien peur que Mademoiselle ait disparu Monsieur, je ne la trouve nulle part, et ce n’est pas son genre de s’absenter aussi longtemps.”
A.Ferguson: ”Seigneur !”
L.Lawson: “Mes questions peuvent attendre. Monsieur Davis, allez fouiller dehors avec monsieur Alfred, je m’occupe de l’intérieur avec monsieur Ferguson.”
(Au revoir mon argent et bonjour le sale boulot d’enquête. Sans attendre le majordome je sors par la première porte. Plus vite je retrouve la gosse, plus vite toute cette histoire se termine).
->manor_outside
->DONE

=manor_outside
{SetDecor("manor_outside_night")}
{PlaceActor("daughter", 4)}
{flush()}
{PlaceActor("davis", 1)}
J.Davis: “Hey !”
{flush()}
*BAAM*
//Ecran noir et qui bouge un instant pour signifier le coup. Bruitage correspondant.
{SetDecor("black")}
(Une douleur fulgurante se répand dans mon crâne et je tombe à genoux. Une brume rouge obscurcit ma vision. Une rage intense me saisit. À travers le brouillard, sans plus contrôler mes gestes, je saisis le premier objet à ma portée et frappe mon agresseur aveuglément. Le bruit sourd quand je le touche n’est que musique à mes oreilles.)
//Réapparition sprite rapproché milieu écran et décor.
{SetDecor("manor_outside_night")}
{PlaceActor("davis", 2)}
“SALE FILS DE...!”
{PlaceActor("alfred", 1)}
Alfred: “Monsieur Davis, vous allez bi…”
//Fondu fond noir.
(Je m’effondre avant d’entendre ses derniers mots).
{SetDecor("black")}
->manor_inside_2
->DONE

=manor_inside_2
...ène..a..
(...)
...mène..a…
(Qu..?)
...Ramène la !...
(Quoi!?)
{SetDecor("manor_inside_day")}
“Ah bon retour parmi nous monsieur !”
//Apparition maire.
{PlaceActor("mayor", 2)}
A.Ferguson : “Merci pour vos soins docteur. Comment vous sentez-vous monsieur Davis ?”
{PlaceActor("davis", 1)}
//Première apparition du HUD
(La lumière du jour est un supplice. Me relever est un supplice. La douleur dans mon crâne est un supplice. Même ma pire gueule de bois n’égale pas cette douleur).
J.Davis: *grogne* “Comme une fleur.”
(Le majordome me tend un verre d’eau et ce que j’espère de tout coeur être un puissant cachet d’aspirine).
{PlaceActor("detective", 3)}
L.Lawson: “Je crains que mademoiselle Ferguson ait disparue hier soir. Ou plutôt a été enlevée. Vous souvenez-vous de quoi que ce soit concernant l’agresseur ?”
J.Davis: “Une certaine tendance à frapper les gens par derrière ? Je sais que je lui ai bien rendu en tout cas.”
L.Lawson: “Ayant déjà une enquête urgente en cours, j’aurai besoin d’aide sur celle-ci. M’accorderez-vous la vôtre ?”
(Bah bien sûr, comme si c’était mon job d’enquêter sur…)
J.Davis: “Absolument !”
(Quoi ?!!)
L.Lawson: “...Eh..Bien...Parfait alors !”
(De toute évidence, ma réponse l’a surprise autant que moi).
L.Lawson: “Je vais parler aux invités, vous devriez aller en ville pour voir s’il n’y a pas de témoin.”
(Mais dans quoi je me suis embarqué !?!)
{SetDecor("black")}

->town
->DONE






==town==
//Mouvement perso détermine scène à jouer

=town_berta_1
{SetDecor("town")}
{PlaceActor("davis", 2)}
{PlaceActor("bigberta", 3)}




*Manoir
->manor_inside
*Ruelle
->backalley
*Pub
->pub
->DONE

->END