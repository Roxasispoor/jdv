﻿EXTERNAL PlaceActor(ActorName, position)
EXTERNAL RemoveActor(ActorName)
EXTERNAL Flush()
EXTERNAL SetDecor(DecorName)
EXTERNAL SetStatus(ActorName, int)
EXTERNAL AddVictorness(float)
EXTERNAL SubstractVictorness(float)
VAR alfred_status = 0
VAR philippe_status = 0
VAR barman_status = 0
VAR couteau = false
VAR ini = 0



->titre

==titre==
“Avis de décès : 25 mai 1943”

{SetDecor("ecrantitre")}
J’appose ma signature sur le testament et le tend à mon client.

->intro
->DONE

==intro==

{SetDecor("black")}
Mon travail est fini. Encore un, comme les autres, une banale affaire d’héritage. Un vieux mort dans son lit. Un fils, maire nanti de Topeka, une petite ville sans histoire. Une petite fille éplorée par la mort de son grand-père. Un manoir qui crit l’opulence, de ses colonnes en marbre à son majordome. Au centre la veillée funèbre du défunt, amis, famille, prêtre et tout le cortège des doléances. 
Une affaire comme les autres, qui me rapportera pas grand chose. 
//Intro sur fond noir, en fondu progressif sur le décor (on ne voit pas les persos).
{SetDecor("manor_inside")}
{Flush()}
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
'Tousse' “Veuillez m’excuser mais je crains que nous ayons un problème”
//Sprite rapproché du majordome qui apparaît à l’écran.
{PlaceActor("alfred", 4)}
(Queue de pie, gants blancs: aucun doute, il s’agit du majordome)
A.Ferguson: “Alfred ?”
(Seigneur, même son nom complète la panoplie. Pitié faites que le prochain invité ne s'appelle pas Bruce)
Alfred: “J’ai bien peur que Mademoiselle ait disparu Monsieur, je ne la trouve nulle part, et ce n’est pas son genre de s’absenter aussi longtemps.”
A.Ferguson: ”Seigneur !”
L.Lawson: “Mes questions peuvent attendre. Monsieur Davis, allez fouiller dehors avec monsieur Alfred, je m’occupe de l’intérieur avec monsieur Ferguson.”
(Au revoir mon argent et bonjour le sale boulot d’enquête. Sans attendre le majordome je sors par la première porte. Plus vite je retrouve la gosse, plus vite toute cette histoire se termine).
{Flush()}


{SetDecor("manor_outside_night")}
{Flush()}
{PlaceActor("daughter", 2)}
!
{Flush()}
{PlaceActor("davis", 2)}
J.Davis: “Hey !”
{Flush()}
'BAAM'
//Ecran noir et qui bouge un instant pour signifier le coup. Bruitage correspondant.
{SetDecor("black")}
(Une douleur fulgurante se répand dans mon crâne et je tombe à genoux. Une brume rouge obscurcit ma vision. Une rage intense me saisit. À travers le brouillard, sans plus contrôler mes gestes, je saisis le premier objet à ma portée et frappe mon agresseur aveuglément. Le bruit sourd quand je le touche n’est que musique à mes oreilles.)
//Réapparition sprite rapproché milieu écran et décor.
{SetDecor("manor_outside_night")}
{Flush()}
{PlaceActor("davis", 2)}
“SALE...!”
{PlaceActor("alfred", 1)}
Alfred: “Monsieur Davis, vous allez bi…”
//Fondu fond noir.
(Je m’effondre avant d’entendre ses derniers mots).
{SetDecor("black")}
{Flush()}


...ène..a..
(...)
...mène..a…
(Qu..?)
...Ramène la !...
(Quoi!?)
{SetDecor("manor_inside")}
{Flush()}
“Ah bon retour parmi nous monsieur !”
//Apparition maire.
{PlaceActor("mayor", 2)}
A.Ferguson: “Merci pour vos soins docteur. Comment vous sentez-vous monsieur Davis ?”
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
{Flush()}
->town

->DONE









==town==

->town_ini
->DONE


=town_ini
{Flush()}
{SetDecor("town")}
{Flush()}
(J'arrive au centre ville pour commencer mon enquête. La place centrale est à l'image du reste de la ville: banale, sans aucun charme ni originalité. Ma migraine s'est légèrement calmée grâce au cachet.)
{PlaceActor("bigberta", 3)}
{PlaceActor("abi", 2)}

->DONE

//Mouvement perso détermine scène à jouer



//BERTA 

=bigberta_0  //Premier dialogue avec elle, va déterminer son comportement pour le reste du jeu.
{Flush()}
{PlaceActor("bigberta", 3)}
"Bon pain tout chaud à peine sortie du four ! Il est bon il est chaud !
Et toi là mon mignon, tu veux du pain ? C'est le meilleur pain de tout Topeka, foi de Berta !
{PlaceActor("davis", 2)}
(La bonne femme typique des patelins perdus: moche, bruyante et peu raffinée. Sa voix nasillarde réveille déjà ma migraine.)
//Choice time !

*[Volontier] //choix neutre, donne l'équipement pain
'Vous recevez du pain'  //Le pain sert à rien mais il introduit le système d'équipement.
Berta: "T'es nouveau en ville mon chou nan ? C'est pas la joie en ce moment. Le père du maire vient de mourir. C'était quelqu'un de bien, même s'il a eu une jeunesse difficile. Maintenant tous ces vautours rôdent autour du maire pour se tailler une part du gâteau"
J.Davis: "Quel gâteau ?"
Berta: "L'héritage pardi ! Le maire a hérité d'une belle petite somme, personne cracherais dessus moi jle dis. Ils lui tournent autour depuis, ct'assureur surtout."
J.Davis: "Je vois."
{SetStatus("bigberta", 1)}
{Flush()}
{PlaceActor("bigberta", 3)}
{PlaceActor("abi", 2)}
->DONE

*[Non merci, il à l'air délicieux mais je préfèrerais plutôt quelques informations]//choix Jack Davis
{SubstractVictorness(1)}
(Je lui explique l'histoire de l'enlèvement et lui demande des pistes)
Berta: "ENLEVEE !?! Oula non je ne sais pas qui a pu faire ça ! Le maire est en froid avec Shawn, mais c'est un bon garçon il ne ferait jamais ça !"
J.Davis: "Shawn ?"
Berta: "Le barman du pub 'L'étalon Pavoisé'. Le maire a voulu le faire fermer il y a quelques temps. Mais Shawn c'est un bon gars, foi de Berta, il a rien à voir."
"J.Davis: "C'est ce qu'on verra"
(Bon au moins ça fait une piste).
{SetStatus("bigberta", 2)}
~ barman_status = 4
{Flush()}
{PlaceActor("bigberta", 3)}
{PlaceActor("abi", 2)}
->DONE

*[Moins fort grognasse, j'ai mal au crâne]
{AddVictorness(1)}
Berta: "Oula t'es pas commode toi ? T'es un copain dl'autre balafré ou quoi !? Si tu cherches ton pote il traîne dans la ruelle, je veux rien avoir à faire avec vos magouilles moi !"
J.Davis: "C'est ça ouais."
{SetStatus("bigberta", 3)}
{Flush()}
{PlaceActor("bigberta", 3)}
{PlaceActor("abi", 2)}

->DONE



=bigberta_1 //2e interaction avec Berta neutre
{Flush()}
{PlaceActor("bigberta", 3)}
{PlaceActor("davis", 2)}
Berta: "Alors, on veut manger autre chose ?"
J.Davis: "Non merci"
{Flush()}
{PlaceActor("bigberta", 3)}
{PlaceActor("abi", 2)}
->DONE


=bigberta_2 //2e interaction avec Berta ouverte
{Flush()}
{PlaceActor("bigberta", 3)}
{PlaceActor("davis", 2)}
Berta: "Alors, t'es sûr que tu veux pas du pain ce coup-ci ?"
J.Davis: "Non merci"
{Flush()}
{PlaceActor("bigberta", 3)}
{PlaceActor("abi", 2)}
->DONE


=bigberta_3 //2e interaction avec Berta ouverte
(Elle m'ignore d'un air dédaigneux)
->DONE





//ABIGAIL

=abi_0
{SetDecor("town")}
{Flush()}
{PlaceActor("abi", 4)}
{PlaceActor("davis", 2)}
(Une gamine à l'air sombre traîne dans la rue. Elle me regarde bizarrement, peut-être qu'elle sait quelque chose ?)
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
(Mais c'est quoi cette gamine ? Ils ont quoi dans cette ville !?)
{SetStatus("abi", 1)}
{RemoveActor("abi")}
{Flush()}
{PlaceActor("bigberta", 3)}
{PlaceActor("abi", 2)}
->DONE

*[Victor ?!] //Jack Davis
{SubstractVictorness(1)}
Abigail: "..Ferguson, le grand père. C'était un homme très porté sur l'occultisme. Spécialisé en projection astrale et possession."
J.Davis: "Hmm, projection astrale, je vois..." (Mais c'est quoi ces conneries encore !?)
Abigail: "Quoi qu'il en soit, si vous voulez retrouver le fille vous aurez besoin de lui. Méfiez vous quand même de vos penchants."
J.Davis: "Merci du conseil"
(Ville de tarés...)
{SetStatus("abi", 1)}
{Flush()}
{PlaceActor("bigberta", 3)}
{PlaceActor("abi", 2)}
->DONE

*[Si tu sais quelque chose gamine tu ferais mieux de parler]//Victor
{AddVictorness(1)}
Abigail: "Oula ! On voit déjà qui a l'ascendant !"
J.Davis: "Mais qu'est-ce que tu marmonnes !?"
Abigail: "Vous devriez faire gaffe à vos choix: vous aurez besoin des 2 faces de la pièce pour trouver la fille et trouver la vérité, mais attention à pas vous égarer !"
(Ville de barjes...)
{SetStatus("abi", 1)}
{Flush()}
{PlaceActor("bigberta", 3)}
{PlaceActor("abi", 2)}

->DONE


//{town_abi_ini}
=abi_1
(Elle lit un vieux bouquin et ne me prête aucune attention.)
{Flush()}
{PlaceActor("bigberta", 3)}
{PlaceActor("abi", 2)}

->DONE









==backalley==
{SetDecor("backalley")}
{Flush()}
{PlaceActor("scarface", 3)}
(Une ruelle sombre et puante entre les bâtiments. Il faut croire que même dans les villes paumées il existe ce genre d'endroits qui crient "coupe gorge". Tout y est: poubelles débordantes, rats, ordeur nauséabonde, même le type louche au fond de la ruelle qui surveille le coin.)

-> DONE

//Scarface

=scarface_0
{Flush()}
{PlaceActor("davis", 1)}
(Lorsque je m'approche le type esquisse un pas menaçant dans ma direction. Il n'est clairement pas là pour faire la causette.)
{PlaceActor("scarface", 3)}
"Dégage de là, on ne passe pas"

*[Toutes mes excuses, je ne suis pas d'ici et je suis perdu] //Jack Davis
{SubstractVictorness(1)}
(Scarface ici présent n'a pas l'air convaincu. Il reste tendu mais n'esquisse pas de nouveau geste.)
Scarface: "T'as rien à faire là et t'as pas le profil du 'client' moyen. Dégage."
J.Davis: "Pas la tête du 'client' moyen ? Je suis pas assez beau c'est ça ?"
Scarface: "Ah ah, très drôle." (De toute évidence ça ne l'est pas) "Maintenant vire de là crétin."
(Je m'apprête à répliquer mais me ravise: il fait bien une tête de plus que moi et je ne suis pas vraiment du type bagarreur. Disons qu'il a eu de la chance pour cette fois.)
{SetStatus("scarface", 3)}
{Flush()}
{PlaceActor("scarface", 3)}
->DONE

*[Pourquoi, c'est interdit par la loi ?]//neutre
(Scarface ici présent n'a pas l'air de m'apprécier)
Scarface: "C'est interdit par moi. Tu veux que je demande à mon ami le mur de te l'expliquer en face à face ou ça ira ?"
(Après une longue réflexion d'environ 1 seconde sur mon envie de rencontrer ledit mur, je lui répond :)
J.Davis: "Ca ira. Je suis sûr qu'il a mieux à faire n'est-ce pas ?" 
Scarface: "Maintenant dégage"
{SetStatus("scarface", 3)}
{Flush()}
{PlaceActor("scarface", 3)}
->DONE

*[Tu ferais mieux te bouger ta graisse face de trou]//Victor
{AddVictorness(1)}
('Qui dit grand dit lent non.' Celui qui a dit ça n'avais jamais rencontré Scarface. Avant même de réagir, il écrase son poing sur mon visage et mon nez craque horriblement. Je lui rend avec un uppercut dans la mâchoire mais il bronche à peine. S'en suit un combat qui malgré ma rage est à sens unique. Je finis rapidement par m'évanouir.)
{Flush()}
{SetStatus("scarface", 1)}
{SetDecor("black")}
->end_2
->DONE

* { couteau == true } [(Sort mon couteau) Ouais et tu vas faire sinon mon grand ?] 
(Scarface ici présent semble beaucoup moins serein d'un coup.)
Scarface: "Ecoute mon gars, je sais pas ce que tu veux mais moi je suis juste les ordres hein !"
J.Davos: "Quels ordres ? Enlever la fille du maire ?"
Scarface: "Quoi ?! Non ! Pourquoi j'enlèverai la fille de mon employeur !? Il m'a demandé d'effrayer un peu l'autre irlandais pour qu'il accepte de fermer son pub, mais ce mec est une foutu armoire à glace !"
J.Davis: "Attends, t'as rien à voir avec l'enlèvement !?"
Scarface: "Je savais même pas qu'elle avait été enlevée ! Si quelqu'un a fait le coup c'est le barman !"
J.Davis: "T'as intérêt à m'avoir dit la vérité !"
{SetStatus("scarface", 2)}
~ barman_status = 5
{Flush()}
{PlaceActor("scarface", 3)}
->DONE


=scarface_2 //Ouvert
{SetDecor("backalley")}
{PlaceActor("davis", 1)}
{PlaceActor("scarface", 3)}
Scarface: "Ecoute j'ai rien d'autre à te dire mec !"
{Flush()}
{PlaceActor("scarface", 3)}

->DONE

=scarface_3 //Fermé
{SetDecor("backalley")}
{PlaceActor("davis", 1)}
{PlaceActor("scarface", 3)}
Scarface: "Dé-gage".
(O-K)
{Flush()}
{PlaceActor("scarface", 3)}

->DONE


=scarface_4 //Couteau mais à la 2e interaction
{PlaceActor("davis", 2)}
{PlaceActor("scarface", 3)}
Scarface: "Dé-gage".
J.Davis: "Pas cette fois mon gars !"
(Je sors mon couteau d'un air menaçant. Certes il était censé me servir pour me défendre en cas de besoin, mais rien n'empêche de l'utiliser pour "enquêter").
(Scarface semble beaucoup moins serein d'un coup.)
Scarface: "Ecoute mon gars, je sais pas ce que tu veux mais moi je suis juste les ordres hein !"
J.Davos: "Quels ordres ? Enlever la fille du maire ?"
Scarface: "Quoi ?! Non ! Pourquoi j'enlèverai la fille de mon employeur !? Il m'a demandé d'effrayer un peu l'autre irlandais pour qu'il accepte de fermer son pub, mais ce mec est une foutu armoire à glace !"
J.Davis: "Attends, t'as rien à voir avec l'enlèvement !?"
Scarface: "Je savais même pas qu'elle avait été enlevée ! Si quelqu'un a fait le coup c'est le barman !"
J.Davis: "T'as intérêt à m'avoir dit la vérité !"
{SetStatus(2, "scarface")}
~ barman_status = 5
{Flush()}
{PlaceActor("scarface", 3)}

->DONE







==manor_inside==

{SetDecor("manor_inside")}
{Flush()}
{PlaceActor("detective", 2)}
{PlaceActor("mayor", 3)}


 
A.Ferguson: "Ecoutez détective, ma fille a disparu, faites votre travail et retrouvez-là au lieu de vous intéresser à des histoires sans intérêt !"
L.Lawson: "Votre père est mort dans des circonstances troubles et vous ne voulez pas savoir ce qu'il s'est vraiment passé ? Quelque chose à cacher peut-être ?"
A.Ferguson: "Rien du tout ! Mais je ne vous laisserai pas fouiller les affaires de mon père et baffouer son nom ! Faites votre job !"
L.Lawson: "Mon job est de découvrir la vérité. Et pour cela j'ai besoin de consulter le testament de votre père !"

* {ini == 0} [(S'allier au maire) "Il a raison, la disparition de la petite est plus importante détective !"]//Victor
{AddVictorness(2)}
{PlaceActor("davis", 1)}
L.Lawson: "Tch. Très bien, si vous le décidez ainsi..."
(Elle me lance un regard noir et s'éloigne. Rabattre le caquet de cette fouine est déjà une victoire en soit)
{RemoveActor("detective")}
A.Ferguson: "Merci pour votre aide monsieur Davis."
{SetStatus("detective", 3)}
{SetStatus("mayor", 2)}
~ alfred_status = 6
~ ini = 1
{Flush()}
{PlaceActor("detective", 2)}
{PlaceActor("mayor", 3)}

->DONE


* {ini == 0} [(S'allier avec la détective) "Elle a raison monsieur Ferguson. Et l'enlèvement peut être lié."] //Jack Davis
{SubstractVictorness(2)}
{PlaceActor("davis", 1)}
(J'en reviens pas d'être d'accord avec cette fouine)
A.Ferguson: "Hmph."
{RemoveActor("mayor")}
(Il s'éloigne sans un regard)
L.Lawson: "Je suis persuadée qu'il y a un lien entre les deux. Occupez-vous de la fille, je cherche dans la famille"
{SetStatus("detective", 2)}
{SetStatus("mayor", 3)}
~ philippe_status = 6
~ ini = 1
{Flush()}
{PlaceActor("detective", 2)}
{PlaceActor("mayor", 3)}

->DONE



//DETECTIVE ET MAIRE


=mayor_2
{Flush()}
{PlaceActor("davis", 2)}
{PlaceActor("mayor", 3)}
A.Ferguson: "Vous avancez sur votre enquête ?"
J.Davis: "J'ai quelques pistes."
A.Ferguson: "Vous devriez parler à Alfred, il connaît bien la ville et ses habitants, il pourrait vous aider. Voulez-vous que je l'appelle ?"
J.Davis: "C'est bon, il me semble l'avoir vu à l'extérieur en arrivant."
{AddVictorness(1)}
~ alfred_status = 6
{Flush()}
{PlaceActor("detective", 2)}
{PlaceActor("mayor", 3)}
->DONE

=mayor_3
{PlaceActor("davis", 2)}
{PlaceActor("mayor", 3)}
A.Ferguson: "Hmph. Continuez donc votre enquête."
{Flush()}
{PlaceActor("detective", 2)}
{PlaceActor("mayor", 3)}
->DONE

=detective_2
{Flush()}
{PlaceActor("davis", 2)}
{PlaceActor("detective", 3)}
(Comment j'ai pu prendre le parti de cette fouine !?)
L.Lawson: "Comment ça avance de votre côté ?"
J.Davis: "J'ai quelques pistes. Vous ?"
L.Lawson: "Je suis persuadée que le maire cache quelque chose. Il n'est pas si concerné par la sécurité de sa fille. En revanche il refuse à tout pris de me donner le testament. Vous en êtes le notaire signitaire non ? Accompagné de cet assureur il me semble ? Vous avez noté quelque chose d'anormal ?"
J.Davis: "Tout à fait. Anormal comme ? Vous pensez qu'il était faux ?"
L.Lawson: "En effet. Je sais que le maire avait besoin d'argent. Il est endetté auprès de la pègre. Son père s'il était au courant ne lui aurait jamais légué ses biens. C'était lui-même un ancien mafieux repenti, mais il est devenu clean, si ce n'est cette passion pour l'occultisme."
(J'en reviens pas qu'elle ait réfléchit aussi loin. Pas mauvaise la fouine !)
J.Davis: "Vous ne soupçonnez tout de même pas son fils de l'avoir..?"
(Elle jette un coup d'oeil autour d'elle)
L.Lawson: "Eliminé ? Ce n'est pas exclu. Le rapport d'autopsie n'est toujours pas arrivé. Quoi qu'il en soit cette affaire est bien plus compliquée qu'il n'y paraît, et si la pègre est impliquée, vous devriez prendre ça pour vous protéger."
'Vous recevez un couteau'
L.Lawson: "Nous devrions reprendre nos enquêtes..."
{RemoveActor("detective")}
~ couteau = true
(Et maintenant voilà qu'elle m'aide. Peut-être qu'il existe UNE bonne détective dans le monde après tout...).
{SubstractVictorness(1)}
~ philippe_status = 6
{Flush()}
{PlaceActor("detective", 2)}
{PlaceActor("mayor", 3)}
->DONE

=detective_3
{Flush()}
{PlaceActor("davis", 2)}
{PlaceActor("detective", 3)}
L.Lawson: "Cherchez donc la fille à l'aveugle. Je préfère chercher la vérité."
{Flush()}
{PlaceActor("detective", 2)}
{PlaceActor("mayor", 3)}
->DONE








==manor_outside_day==

{SetDecor("manor_outside_day")}
{Flush()}
{PlaceActor("alfred", 3)}
{PlaceActor("philippe", 4)}

(Le majordome est en pleine discussion avec un homme sinistre que je reconnais sans peine. Philippe Van Hert, assureur de métier mais il pourrait tout aussi bien être croque-mort. Nous étions ensemble pour la signature du testament.)
{PlaceActor("davis", 1)}
(Alors que je m'approche d'eux j'entends des bribes de conversation.)
Alfred: "...faire restera entre nous."
P.Van Herl: "Bien entendu" 
(Ils s'arrêtent en me voyant arriver. Ma présence ne les ravit visiblement pas.)
Alfred: "Ah, monsieur Davis ! Votre tête va-t-elle mieux ?"
J.Davis: "Merci, oui."
(Van Herl reste silencieux mais son regard est acéré comme des lames.)
{SetStatus("alfred", 1)}
{SetStatus("philippe", 1)}


* {alfred_status == 6} [Puis-je vous parler un instant Alfred ?]
Alfred: "Bien sûr monsieur, de quoi s'agit-il ?"
{RemoveActor("philippe")}
J.Davis: "Monsieur Ferguson m'a dit de s'adresser à vous pour avoir des informations sur la ville et ses habitants."
Alfred: "Oh, je vois, en effet. J'ai entendu Monsieur s'énerver tout à l'heure, j'avais peur que ce soit contre vous."
J.Davis: "Ah, non. Il se disputait avec l'autre fouin...détective. Au sujet du testament du défunt il me semble..."
Alfred: "Ah !"
(Il semble soudain nerveux. Ne me dites que la fouine avait vraimene mis le doigt sur quelque chose !?)
J.Davis: "Quelque chose vous dérange ? Le testament n'est pas perdu au moins ?"
Alfred: "Non, non, bien sûr que non ! Le testament est bien en sécurité dans le coffre personnel de Monsieur, avec une partie de sa fortune. Très peu de personnes ont le code, il ne risque rien."
(Il palît soudain et son visage se tend comme s'il venait de réaliser quelque chose)
Alfred: "A vrai dire, seulement Monsieur...et Mademoiselle."
J.Davis: "Oh...OH !"
Alfred: "Je ne crains que cette affaire ne vienne de prendre une autre ampleur".
{AddVictorness(1)}
{Flush()}
{PlaceActor("alfred", 3)}
{PlaceActor("philippe", 4)}
->end_1
->DONE


* {philippe_status == 6} [Puis-je vous parler monsieur Van Herl ?]
P.Van Herl: "...Certainement."
{RemoveActor("alfred")}
(Son ton est aussi glacial que son reagrd. Discuter avec lui tient presque de la torture)
J.Davis: "Je discutais avec la détective plus tôt et elle avait une théorie intéressante vis à vis de la mort de Victor. Elle semblait insinuer que le testament que nous avons tous les deux signé était un faux. Aviez-vous remarqué quelque chose d'anormal dans le document ?"
(Il reste silentieux un moment avant de commencer à rire calmement. Il me glace le sang)
P.Van Herl: "Monsieur Davis. Vous devriez rester hors des affaires qui ne vous concerne pas. Et je resterai hors de vos affaires."
J.Davis: "Mes affaires ?"
P.Van Herl: "Allons monsieur Davis. N'êtes-vous pas notaire ? Un homme de votre profession devrait sans problème reconnaître la validité d'un tel document. Du moins, si c'est vraiment votre profession..."
(Seigneur, non seulement il est terrifiant, mais au moins aussi intelligent que la détective)
(Devant mon silence il reprend)
P.Van Herl: "Au revoir monsieur Davis."
{SubstractVictorness(1)}
{Flush()}
{PlaceActor("alfred", 3)}
{PlaceActor("philippe", 4)}
->DONE


=alfred_1
{Flush()}
{PlaceActor("davis", 2)}
{PlaceActor("alfred", 3)}
Alfred: "J'espère que vous et mademoiselle Lawson retrouverez Mademoiselle. Elle était si chère aux yeux de Monsieur Victor..."
{Flush()}
{PlaceActor("alfred", 3)}
{PlaceActor("philippe", 4)}
->DONE


=philippe_1
{Flush()}
{PlaceActor("davis", 2)}
{PlaceActor("philippe", 3)}
(Son reagrd est glacial comme toujours)
P.Van Herl: "Ne vous mêlez pas des affaires qui ne vous concernent pas"
(Avec plaisir !)
{Flush()}
{PlaceActor("alfred", 3)}
{PlaceActor("philippe", 4)}
->DONE








==pub==
{SetDecor("pub")}
{Flush()}
{PlaceActor("davis", 2)}
{PlaceActor("barman", 3)}

('L'Etalon Pavoisé' à tout du pub irlandais traditionnel: atmosphère enfumée, billard avec ses quelques habitués au fond, drapeux irlandais et Saint Patrick décorant les murs. Les clients sont néanmoins peu nombreux. Le barman travaille derrière le bar. Un panneau derrière lui indique 'L'Etalon Pavoisé, établissement de tradition depuis 1924. Propriétaire: Shawn O'Brien'. Je vais m'asseoir en face)
S.O'Brien: "Je peux vous servir quelque chose ?"
J.Davis: "Whisky"

->DONE


=barman_0
{SetDecor("pub")}
{PlaceActor("davis", 2)}
{PlaceActor("barman", 3)}

(Il nettoie consciencieusement un verre)

*[Il paraît que la fille du maire a été enlevée hier soir, vous avez entendu quelque chose à ce sujet ?]//Jack Davis
{SubstractVictorness(1)}
(A ces mots il se raidit légèrement. J'ai touché au bon endroit)
S.O'Brien: "J'ai entendu dire. Et en quoi ça vous concerne ?"
J.Davis: "J'enquête sur sa disparition et je compte bien la retrouver."
S.O'Brien: "C'est parce que vous avez entendu les rumeurs que vous venez m'interroger je suppose ?"
J.Davis: "Exact" (Pas du tout, mais il à l'air de vouloir parler, alors qu'il parle !)
S.O'Brien: "Ecoutez, le maire a voulu faire fermer mon pub et ça m'a énervé c'est vrai, mais jamais je n'aurais fait de mal à Emily pour me venger !"
J.Davis: "Oh, vous semblez proche d'Emily"
S.O'Brien: "...On est sorti ensemble un temps. C'est de l'histoire ancienne. Mais ça ne m'empêche pas de m'inquiéter pour elle. J'espère que votre enquête aboutir."
{SetStatus("barman", 1)}
{Flush()}
{PlaceActor("davis", 2)}
{PlaceActor("barman", 3)}
->DONE

*[Votre piquette vaut rien, mais peut-être que vous avez des infos: la fille du maire a été enlevée]//Victor
{AddVictorness(1)}
J.O'Brien: "Si vous n'aimez pas libre à vous de partir. C'est pas le seul bar de Topeka. Et non j'ai pas d'infos."
(Il continue de nettoyer son verre comme si de rien n'était)
{SetStatus("barman", 1)}
{Flush()}
{PlaceActor("davis", 2)}
{PlaceActor("barman", 3)}
->DONE

* {barman_status == 4} [J'ai entendu dire que vous étiez en conflit avec le maire. Vous ne vous en seriez pas pris à sa fille pour vous venger par hasard ?]
{SubstractVictorness(1)}
S.O'Brien: "Ecoutez, le maire a voulu faire fermer mon pub et ça m'a énervé c'est vrai, mais jamais je n'aurais fait de mal à Emily pour me venger !"
J.Davis: "Oh, vous semblez proche d'Emily"
S.O'Brien: "...On est sorti ensemble un temps. C'est de l'histoire ancienne. Mais ça ne m'empêche pas de m'inquiéter pour elle."
(Il semble en effet boulversé. Pas comme un homme qui s'inquiète seulement pour une vieille connaissance)
J.Davis: "A vous entendre, elle ne doit pas être si ancienne que ça."
S.O'Brien: "Ca c'est pas vos oignons. J'espère qu'au moins votre enquête aboutira."
{SetStatus("barman", 1)}
{Flush()}
{PlaceActor("davis", 2)}
{PlaceActor("barman", 3)}
->DONE

* {barman_status == 5} [Planter le couteau dans le bar]
(O'Brien sursaute. Bien, j'ai son attention)
J.Davis: "Ecoute moi bien: j'enquête sur la disparition d'Emily Ferguson et mon nouvel ami Scarface à deux rues d'ici m'a dit que si quelqu'un a fait le coup c'est toi. T'as pas aimé que le maire utilise ses petits copains de la pègre pour te menacer, ça je comprends bien, donc en retour tu t'es dit que t'aller en prendre à sa fille, j'ai raison ?"
(Il est nerveux, visiblement j'ai touché un point sensible)
S.O'Brien: "T'y es pas du tout ! C'est vrai que Cocimo, Scarface comme tu l'appelles, a voulu me menacer un peu mais il s'est pris une raclée et est rentré chez lui ! Bien sûr que je savais que c'était le maire et que je voulais me venger mais jamais j'aurais fait de mal à Emily !"
J.Davis: "Pourquoi pas, c'était une cible facile: la jeune fille éplorée par la mort de son grand père, elle s'éloigne un peu du groupe et BAAM ! Dommage que quelqu'un se soit entreposé. J'en ai encore une vilaine migraine, mais je sais que je t'en ai mis une belle aussi."
S.O'Brien: "Ok ok ça va j'étais bien là mais tu te trompes..."
{SetStatus("barman", 1)}
{Flush()}
->end_0
->DONE
 
 =barman_1
{PlaceActor("davis", 2)}
{PlaceActor("barman", 3)}
(Il nettoie toujours consciencieusement un verre)
S.O'Brien: "Je peux vous servir autre chose ?
J.Davis: "Non merci"
{Flush()}
{PlaceActor("davis", 2)}
{PlaceActor("barman", 3)}
->DONE




//==default==
//Que faire ?


==end_0== //La bonne fin
{SetDecor("pub")}
{Flush()}
{PlaceActor("davis", 2)}
{PlaceActor("barman", 3)}
"C'est bon Shawn. Monsieur Davis a déjà compris toute l'histoire. N'est-ce pas ?
{RemoveActor("barman")}
{PlaceActor("daughter", 3)}
(Emily. Pas le moins du monde effrayée, et je le comprends maintenant, pas le moins du monde enlevée)
E.Ferguson: "Le testament était un faux. Mon grand père n'aurait jamais rien légué à mon père. Ce gros idiot est endetté jusqu'à la moelle auprès de la pègre local."
J.Davis: "Vous étiez l'héritière."
E.Ferguson: "Exact. Et comme j'aurai 16 ans dans 1 mois, mon père n'aurait pas pu toucher une centime même s'il l'avait voulu. Alors il a tout falsifié, avec l'aide de l'assureur, et sans que vous le sachiez la vôtre"
J.Davis: "Laissez-moi deviner, il comptait vous envoyer en pension quelque part loin de votre héritage. Alors vous avez fuit avant."
E.Ferguson: "Je suis la seule autre personne à connaître la combinaison de son coffre, alors j'ai pris ce qui me revenait. Je quittes Topeka avec Shawn. Cette ville n'a plus rien pour moi. J'avais juste besoin de faire profil bas quelques jours. Mais vous m'avez rattrapée d'abord."
J.Davis: "Et oui, moi. On eut cru qu'un détective aurait résolu l'affaire, mais c'était le notaire dans le pub avec le couteau !"
(Elle commence à rire)
E.Ferguson: "Désolé de casser vos rêves mais Lawson savait depuis le début. A votre avis, pourquoi elle vous a envoyé à ma poursuite avec Alfred ?"
(Et là je réalise. Il n'y pas de bon détective, seuelement de sales fouines fourbes)
J.Davis: "Le coffre."
E.Ferguson: "Le coffre. Lawson a toujours enquêté sur le meurtre de mon grand père - car oui c'en est un à coup sûr. Voyez de quoi est capable mon père pour l'argent, alors ce qu'il ferait à sa propre fille..."
(Un instant elle semble vulnérable. Seulement un instant.)
E.Ferguson: "Quoi qu'il en soit, annoncez votre prix."
J.Davis: "Pardon !?"
E.Ferguson: "Allons, si vous étiez vraiment notaire vous auriez eu connaissance de la supercherie du testament dès le début et n'auriez pas à faire toute cette laborieuse enquête. Vous êtes une sorte de charlatan professionel non ?"
(Hmph, maline cette petite.)
J.Davis: "Je préfère le terme 'arnaqueur'. C'est plus professionel."
(Elle rit)
E.Ferguson: "1000$ pour votre silence et votre départ de Topeka dans la journée, c'est assez professionel à votre goût ?"
{Flush()}
{SetDecor("black")}
{PlaceActor("davis", 2)}
Mon travail est fini. Encore une affaire comme les autres, arnaquer un riche client pour lui soutirer un peu d'argent. 
Mais cette fois la récompense a été à la hauteur du jeu. 
J'ai quitté Topeka le jour même, une partie de l'héritage en poche. Faut croire que notaire ça rapporte.
Cette affaire était quand même différente des autres: dans cette nouvelle vie d'arnaque j'ai dû changer pertpétuellement pour pouvoir avancer.
La prochaine ? J'ai entendu parler d'une exposition archéologique dans une ville proche. Arkham je crois ?
{Flush()} 

->credit
->DONE



==end_1==
{Flush()}
{SetDecor("black")}
3 jours plus tard, la détective Lynn Lawson arrêta Archibald Ferguson pour patricide. Le rapport d'autopsie révélant des traces de poison dans l'organisme de Victor Ferguson, la thèse de la mort paisible était définitivement écartée.
Emily ne fut jamais retrouvée. L'enquête avait révélée qu'Archibald avait des dettes auprès de la pègre locale, mais jamais leur implication dans l'enlèvement.
{PlaceActor("davis", 2)}
Quant à moi, je n'ai évidemment pas été payé. Ville pourri, enquête pourrie, boulot pourri. Je change de vie, j'arrêtes d'être notaire, ça rapporte pas assez. Ou c'est moi qui aurait peut-être dû changer.
{Flush()} 

->credit
->DONE




==end_2==
{SetDecor("black")}
{Flush()}
{PlaceActor("davis", 2)}
(Je me réveille après ce qui me paraît une éternité plus tard, menotté à un lit d'hôpital. La détective Lawson m'apprend que j'ai dormi 3 jours. Pendant ce temps la fille Ferguson est rentrée chez elle, et Scarface a été arrêté pour son enlèvement, ainsi qu'agression. Quant aux menottes: j'ai été inculpé également pour agression, ainsi que pour falsification de testament. Il semblerait que le vieux Victor n'était pas vraiment mort paisiblement, et que la question de l'héritage restait en suspens tant que le vrai testament n'aurait pas été retrouvé.)
(Ma paye envolée, inculpé pour un crime que je ne savais même pas avoir commis, moi qui pensais que la vie de notaire était assez pourrie comme ça, j'avais tort. Si seulement j'avais pu changer les choses...)
{Flush()} 

->credit
->DONE



==credit==
{SetDecor("credit")}
Merci d'avoir joué
->DONE



->END