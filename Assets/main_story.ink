EXTERNAL PlaceActor(ActorName, position)
EXTERNAL RemoveActor(ActorName)
EXTERNAL Flush()
EXTERNAL SetDecor(DecorName)
EXTERNAL SetStatus(int, ActorName)

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
{Flush()}
{PlaceActor("davis", 1)}
J.Davis: “Hey !”
{Flush()}
<<<<<<< HEAD
'BAAM'
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

=town_intro
(J'arrive au centre ville pour commencer mon enquête. La place centrale est à l'image du reste de la ville: banale, sans aucun charme ni originalité. Ma migraine s'est légèrement calmée grâce au cachet.)
->DONE

//Mouvement perso détermine scène à jouer



//BERTA 


//{berta_status == "neutre"}
=town_berta_1 //2e interaction avec Berta neutre
{PlaceActor("bigberta", 3)}
{PlaceActor("davis", 2)}
Berta: "Alors, on veut manger autre chose ?"
J.Davis: "Non merci"
{Flush()}
->DONE

//{berta_status == "ouvert"}
=town_berta_2 //2e interaction avec Berta ouverte
{PlaceActor("bigberta", 3)}
{PlaceActor("davis", 2)}
Berta: "Alors, t'es sûr que tu veux pas du pain ce coup-ci ?"
J.Davis: "Non merci"
->DONE

//{berta_status == "ferme"}
=town_berta_3 //2e interaction avec Berta ouverte
(Elle m'ignore d'un air dédaigneux)
->DONE



=town_berta_0  //Premier dialogue avec elle, va déterminer son comportement pour le reste du jeu.
{SetDecor("town")}
{PlaceActor("bigberta", 3)}
"Bon pain tout chaud à peine sortie du four ! Il est bon il est chaud !
Et toi là mon mignon, tu veux du pain ? C'est le meilleur pain de tout Topeka, foi de Berta !
{PlaceActor("davis", 2)}
(La bonne femme typique des patelins perdus: pas vraiment belle, bruyante et peu raffinée. Sa voix nasillarde réveille déjà ma migraine.)
//Choice time !

*[Volontier] //choix neutre, donne l'équipement pain
'Vous recevez du pain'  //Le pain sert à rien mais il introduit le système d'équipement.
Berta: "T'es nouveau en ville mon chou nan ? C'est pas la joie en ce moment. Le père du maire vient de mourir. C'était quelqu'un de bien, même s'il a eu une jeunesse difficile. Maintenant tous ces vautours rôdent autour du maire pour se tailler une part du gâteau"
J.Davis: "Quel gâteau ?"
Berta: "L'héritage pardi ! Le maire a hérité d'une belle petite somme, personne cracherais dessus moi jle dis. Ils lui tournent autour depuis, ct'assureur surtout."
J.Davis: "Je vois."
{SetStatus(1, "bigberta")}
{Flush()}

*[Non merci, il à l'air délicieux mais je préfèrerais plutôt quelques informations] //choix Jack Davis
(Je lui explique l'histoire de l'enlèvement et lui demande des pistes)
Berta: "ENLEVEE !?! Oula non je ne sais pas qui a pu faire ça ! Le maire est en froid avec Shawn, mais c'est un bon garçon il ne ferait jamais ça !"
J.Davis: "Shawn ?"
Berta: "Le barman du pub 'L'étalon Pavoisé'. Le maire a voulu le faire fermer il y a quelques temps. Mais Shawn c'est un bon gar, foi de Berta, il a rien à voir."
"J.Davis: "C'est ce qu'on verra"
(Bon au moins ça fait une piste).
{SetStatus(2, "bigberta")}
{Flush()}

*[Moins fort grognasse, j'ai mal au crâne]
Berta: "Oula t'es pas commode toi ? T'es un copain dl'autre balafré ou quoi !? Si tu cherches ton pote il traîne dans la ruelle, je veux rien avoir à faire avec vos magouilles moi !"
J.Davis: "C'est ça ouais."
{SetStatus(3, "bigberta")}
{Flush()}
->DONE




//ABIGAIL

=town_abi_0
{SetDecor("town")}
{PlaceActor("abi", 3)}
{PlaceActor("davis", 2)}
(Une gamine à lair sombre traîne dans la rue. Elle me regarde bizarrement, peut-être qu'elle sait quelque chose ?)
"..." //Couleur abi mais pas encore son nom
J.Davis: "Euh..Bonjour ?"
"...'Jour." //Couleur abi
(Ca commence bien...)
J.Davis: "Dis-moi euh..."
"..Abigail"
J.Davis: "..Abigail. Je peux te poser quelques question ?"
Abigail: "Sur la fille ou sur Victor ?"

*[Quoi !?] //Neutre
Abigail: "...Pour la fille je sais rien de toute façon, mais pour Victor vous devriez faire gaffe, il était connu pour être violent plus jeune..."
J.Davis: "Attends, Victor...Ferguson ? Quel rapport avec tout ça ?!"
Abigail: "Avec votre enquête je sais pas, avec vous par contre... Méfiez vous de vos penchants, les extrêmes sont dangereux"
{RemoveActor("abi")}
(Mais c'est quoi cette gamine ? Ils ont quoi dans cette ville !?)
{Flush()}

*[Victor ?!] //Jack Davis
Abigail: "..Ferguson, le grand père. C'était un homme très porté sur l'occultisme. Spécialisé en projection astrale et possession."
J.Davis: "Hmm, projection astrale, je vois..." (Mais c'est quoi ces conneries encore !?)
Abigail: "Quoi qu'il en soit, si vous voulez retrouver le fille vous aurez besoin de lui. Méfiez vous quand même de vos penchants."
J.Davis: "Merci du conseil"
{RemoveActor("abi")}
(Ville de tarés...)
{Flush()}

*[Si tu sais quelque chose gamine tu ferais mieux de parler]//Victor
Abigail: "Oula ! On voit déjà qui a l'ascendant !"
J.Davis: "Mais qu'est-ce que tu marmonnes !?"
Abigail: "Vous devriez faire gaffe à vos choix: vous aurez besoin des 2 faces de la pièce pour trouver la fille et trouver la vérité, mais attention à pas vous égarer !"
{RemoveActor("abi")}
(Ville de barjes...)
{Flush()}

->DONE


//{town_abi_ini}
=town_abi_1
(Elle lit un vieux bouquin et ne me prête aucune attention.)
->DONE

->DONE







==backalley==
{SetDecor("backalley")}
(Une ruelle sombre et puante entre les bâtiments. Il faut croire que même dans les villes paumées il existe ce genre d'endroits qui crient "coupe gorge". Tout y est: poubelles débordantes, rats, ordeur nauséabonde, même le type louche au fond de la ruelle qui surveille le coin.)

-> DONE

//Scarface

=ba_scarface_0
{PlaceActor("davis", 1)}
(Lorsque je m'approche le type esquisse un pas menaçant dans ma direction. Il n'est clairement pas là pour faire la causette.)
{PlaceActor("scarface", 3)}
"Dégage de là, on ne passe pas"

*[Toutes mes excuses, je ne suis pas d'ici et je suis perdu] //Jack Davis
(Scarface ici présent n'a pas l'air convaincu. Il reste tendu mais n'esquisse pas de nouveau geste.)
Scarface: "T'as rien à faire là et t'as pas le profil du 'client' moyen. Dégage."
J.Davis: "Pas la tête du 'client' moyen ? Je suis pas assez beau c'est ça ?"
Scarface: "Ah ah, très drôle." (De toute évidence ça ne l'est pas) "Maintenant vire de là crétin."
(Je m'apprête à répliquer mais me ravise: il fait bien une tête de plus que moi et je ne suis pas vraiment du type bagarreur. Disons qu'il a eu de la chance pour cette fois.)
{SetStatus(3, "scarface")}
{Flush()}

*[Pourquoi, c'est interdit par la loi ?]//neutre
(Scarface ici présent n'a pas l'air de m'apprécier)
Scarface: "C'est interdit par moi. Tu veux que je demande à mon ami le mur de te l'expliquer en face à face ou ça ira ?"
(Après une longue réflexion d'environ 1 seconde sur mon envie de rencontrer ledit mur, je lui répond :)
J.Davis: "Ca ira. Je suis sûr qu'il a mieux à faire n'est-ce pas ?" 
Scarface: "Maintenant dégage"
{SetStatus(3, "scarface")}
{Flush()}

*[Tu ferais mieux te bouger ta graisse face de trou]//Victor
('Qui dit grand dit lent non.' Celui qui a dit ça n'avais jamais rencontré Scarface. Avant même de réagir, il écrase son poing sur mon visage et mon nez craque horriblement. Je lui rend avec un uppercut dans la mâchoire mais il bronche à peine. S'en suit un combat qui malgré ma rage est à sens unique. Je finis rapidement par m'évanouir.)
{Flush()}
{SetDecor("black")}
(Je me réveille après ce qui me paraît une éternité plus tard, menotté à un lit d'hôpital. La détective Lawson m'apprend que j'ai dormi 3 jours. Pendant ce temps la fille Ferguson est rentrée chez elle, et Scarface a été arrêté pour son enlèvement, ainsi qu'agression. Quant aux menottes: j'ai été inculpé également pour agression, ainsi que pour falsification de testament. Il semblerait que le vieux Victor n'était pas vraiment mort paisiblement, et que la question de l'héritage restait en suspens tant que le vrai testament n'aurait pas été retrouvé.)
(Ma paye envolée, inculpé pour un crime que je ne savais même pas avoir commis, moi qui pensais que la vie de notaire était assez pourrie comme ça, j'avais tort. Si seulement j'avais pu changer les choses...)

*[(Sort mon couteau) Ouais et tu vas faire sinon mon grand ?] //Nécessite couteau et Victorité
(Scarface ici présent semble beaucoup moins serein d'un coup.)
Scarface: "Ecoute mon gars, je sais pas ce que tu veux mais moi je suis juste les ordres hein !"
J.Davos: "Quels ordres ? Enlever la fille du maire ?"
Scarface: "Quoi ?! Non ! Pourquoi j'enlèverai la fille de mon employeur !? Il m'a demandé d'effrayer un peu l'autre irlandais pour qu'il accepte de fermer son pub, mais ce mec est une foutu armoire à glace !"
J.Davis: "Attends, t'as rien à voir avec l'enlèvement !?"
Scarface: "Je savais même pas qu'elle avait été enlevée ! Si quelqu'un a fait le coup c'est le barman !"
J.Davis: "T'as intérêt à m'avoir dit la vérité !"
{SetStatus(2, "scarface")}
{Flush()}

->DONE

=ba_scarface_2 //Ouvert
{SetDecor("backalley")}
{PlaceActor("davis", 1)}
{PlaceActor("scarface", 3)}
Scarface: "Ecoute j'ai rien d'autre à te dire mec !"
{Flush()}

->DONE

=ba_scarface_3 //Fermé
{SetDecor("backalley")}
{PlaceActor("davis", 1)}
{PlaceActor("scarface", 3)}
Scarface: "Dé-gage".
(O-K)
{Flush()}

->DONE








==manor_inside==

{SetDecor("manor_inside_day")}
{PlaceActor("detective", 2)}
{PlaceActor("mayor", 3)}
A.Ferguson: "Ecoutez détective, ma fille a disparu, faites votre travail et retrouvez-là au lieu de vous intéresser à des histoires sans intérêt !"
L.Lawson: "Votre père est mort dans des circonstances troubles et vous ne voulez pas savoir ce qu'il s'est vraiment passé ? Quelque chose à cacher peut-être ?"
A.Ferguson: "Rien du tout ! Mais je ne vous laisserai pas fouiller les affaires de mon père et baffouer son nom ! Faites votre job !"
L.Lawson: "Mon job est de découvrir la vérité. Et pour cela j'ai besoin de consulter le testament de votre père !"

*[(S'allier au maire) "Il a raison, la disparition de la petite est plus importante détective !"] //Victor
{PlaceActor("davis", 4)}
L.Lawson: "Tch. Très bien, si vous le décidez ainsi..."
(Elle me lance un regard noir et s'éloigne.)


-> DONE







==default==
Que faire ?

->END