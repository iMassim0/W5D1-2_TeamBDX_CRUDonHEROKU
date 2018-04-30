# Week n°5 on Day n°2 - THP by Team BDX - CRUD on Rails

## Projet du jour :

Le projet du jour consiste à aborder 2 notions :

  - Créer une application rails, le faire évoluer pour qu'il puisse avoir accès à une base de données (movies et directors), les mettre en relation, puis pusher tout cela une fois que l'application est fonctionnelle en local, sur un hébergeur, présentement, Heroku. Ce fait s'appelle mettre en production son application. Pour être efficient, il faut nécessairement initialiser son projet avant toute modification avec l'hébergeur choisi. Sinon : PLS.

  - Créer une application rails et créer ce qu'on appelle le CRUD : Create/Read/Update/Delete. Le but est de créer chacun des éléments du CRUD et comprendre son fonctionnement. Et après s'être bien cassé la tête à tout créer, on peut voir qu'avec une simple commande nommée "scaffold" .... Bah tout se fait, et tout seul. Merci la PLS du lundi 30 avril.

## Pré-requis et installation :

1 - Veuillez svp vous relever de votre PLS.

2 - Veuillez cloner ce repo sur votre machine avec la commande suivante (le dossier créé s'appelera "W5D1_CRUD"):

```
  $ git clone https://github.com/iMassim0/the-movie-database
```

3 - Se rendre dans le dossier souhaité, et effectuer cette ligne de commande suivante pour initialiser le fonctionnement:

```
  $ bundle update && bundle install && rails db:migrate
```


## Fonctionnement des applications :

Pour tester l'application, deux choix s'offrent à vous :

 - En local :

Une fois placé(e) dans le dossier souhaité, effectuer la commande suivante :
```
  $ rails s
```
Vous pouvez maintenant observer le fonctionnement de l'application (console of course) via l'adresse :
```
  @ http://http://localhost:3000/
```

  - Sur les sites déployés :

the-movie-database :
```
  @ https://movies-team-bdx.herokuapp.com/
```
the-gossip-project :
```
  @ https://gossips-team-bdx.herokuapp.com/
```

*PS : la console est totalement possible pour aller tester des créations de Movie/Director ou Gossip/Comment.*

*NOTA : $ = terminal || > = console rails || @ = web browser*

## Conditions de test des exercices pour les corrections

**Ruby 2.5.1**

**Bundle 1.16.1**

## Contributeurs

@bab - Baptiste ROGEON

@massimo - Maxime FLEURY

<p align="center">
  <img src="THP_BDX.png"/>
</p>

## Pour aller plus loin un lundi de pont

### Au début, t'es comme ca :
https://www.youtube.com/watch?v=zzTa7KQYVDU

### A 18h, tu penses comprendre :
https://www.youtube.com/watch?v=aZVHPbbFSOE

### Mais à 18h13 tu tombes la dessus :
https://www.youtube.com/watch?v=C6vinrXWxls

### Et à 22h30, tu t'y remets enfin :
https://www.youtube.com/watch?v=KEyuEkuDOoI
