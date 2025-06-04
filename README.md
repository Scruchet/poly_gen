# Polygénéalogie
Bienvenue aux polytechLillois, voici Polygénéalogie, un outil développé par Simon Cruchet et entretenu d'année en année par les Systèmes Embarqués (qui vont sûrement changer de nom encore une fois).

Polygénéalogie vous permet d'ajouter des étudiants et de pouvoir générer une image de l'arbre généalogique des filières de Polytech'Lille.

## Comment utiliser l'outil
**JE RECOMMANDE VIVEMENT À TOUTE PERSONNE FAISANT DES MANIPULATION DE LIRE CE TUTORIEL INTÉGRALEMENT POUR ÉVITER TOUTE CONFUSION ET DE NE PAS FAIRE N'IMPORTE QUOI AU NIVEAU DU VERSIONING : ON CRÉE UNE BRANCHE PUIS ON FAIT UNE MERGE REQUEST !**

Pour générer les fichiers il faut au préalable installer graphviz 

```sudo apt install graphviz``` 

Chaque fichiers .dot va générer l'arbre généalogique d'une filière, pour cela un simple ``` make all ``` fera l'affaire.

## Syntaxe

La syntaxe de l'outil est très simple et ressemble un petit peu à du json.

### Etape 1 : Ajouter une année de promotion

Dans la section **subgraph cluster_promos{}** vous trouverez une liste d'année, ajouter l'année de promotion selon cette syntaxe : ``` -> 20XX ;```

### Etape 2 : Copier/Coller l'année précedente pour créer votre nouvelle promotion

Cela commence à partir de *{rank = "same"* et se termine au *;* du dernier lien de parrainage.

### Etape 3 : Changer les noms

La déclaration des nouveaux membres ce fait selon cet exemple : 

**scruchet	[label = "CRUCHET\nSimon"];**  \n permet de revenir à la ligne. Nous prenons en général la syntaxe donnée selon vos identifiants Polytech, cette règle n'a pas toujours été respectée par des années plus ancienne, faites donc attention aux doublons.

Certaines personnes ont des rôles au sein des clubs de l'école. Sont mis à l'honneur les présidents de clubs, les membres du BDE et les membres de liste. Pour ces personnes la syntaxe légèrement : **adieu les crochets, bonjours les balises.**.
Pour ceux ayant déjà fait de l'HTML, c'est le même principe : le nom est entouré par **< >**, les retours à la ligne se font avec **<BR/>** et le club/rôles se met dans une balise italique **<I> </I>**

* **fillcolor** représente la couleur de fond de la case
* **penwidth** l'épaisseur du contour (en général =4)
* **color** la couleur du contour

**la couleur des membres du BDE est le rouge = #f05050**
**Les présidents de clubs sont en *jaunes***

Pour le reste des couleurs des listes essayez soit avec la couleur en anglais soit avec son code hexadécimale, mais dans tous les cas **METTEZ VOUS D'ACCORD ENTRE VOUS !!!**

Voici un exemple d'un président de club et d'un membre de liste devenu membre du BDE :

**bcart	   [label = <CART<BR/>Benjamin<BR/><I>Robotech</I>> fillcolor="yellow"];**

**akerhasco  [label = <KERHASCOËT<BR/>Arthur<BR/><I>Respo Inté/Events</I>> fillcolor="#f05050" penwidth=4 color="green"];**


Voici un exemple où une personne a été à la fois présidente de club, listeuse et élue au BDE. Vous pouvez remarquer que la couleure intérieure se fait grâce à un gradient qui va du rouge au jaune.

**louise		[label = <MAES<BR/>Louise<BR/><I>Respo Com<BR/>BDA</I>> fillcolor="#f05050:yellow" penwidth=4 color="purple"];**

### Etape 4 : Faites des liens

pour cela rien de plus simple voici la syntaxe : 
**nom_du_parain->nom_du_fillot;**

Certains d'entres nous se font adopter, ça arrive c'est la vie. Pour remédier à ça, il suffit d'ajouter **[style=dashed]** après le lien : 

**pierregau -> boris [style=dashed];**

Vous pouvez ajouter autant le lien qu'il le faut, ne faite juste pas un sac de noeud :) 

# Bon courage et vive Polytech'Lille !

## Alternants
![alternants](alternants.pdf "Alternants")

## 2IA
![2ia](2ia.pdf "2IA")

## GBA
![gba](gba.pdf "GBA")

## GC
![gc](gc.pdf "GC")

## IS
![is](is.pdf "IS")

## Matériaux
![mat](mat.pdf "Matériaux")

## Mécanique
![meca](meca.pdf "Méca")

## SE
![se](se.pdf "SE")
