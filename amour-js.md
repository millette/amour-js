---
title: J'aime le JavaScript
date: 2018-02-14
authorUrl: http://robin.millette.info/
author:
- Robin Millette
lang: fr
css:
- css/bulmaswatch-cyborg.min.css
...

## La longue histoire, côté client
Je me rappelle mon premier jeu HTML, c'était en 1997 ou quelque chose comme ça. En fait, c'était surtout une expérience pour voir ce qui était possible avec du HTML statique, sans même de JavaScript. L'action était basée sur le vénérable [meta refresh](https://en.wikipedia.org/wiki/Meta_refresh) avec une granularité d'une seconde.

Les années suivantes j'ai fait un peu de JavaScript et franchement je trouvais ça reboutant. C'était l'époque où Microsoft Internet Explorer utilisait JScript, avant même jQuery. Je n'ai pas de nostalgie pour cette époque. Je faisais du C++ et un peu de C à cette époque. JavaScript avait toutes les apparences du C avec ses accollades et points-virgules, mais sans la gestion de la mémoire.

Les apparences peuvent être trompeuses. Ce que je ne savais pas à ce moment là, c'est que le JavaScript s'inspirait beaucoup plus de Scheme ou de Lisp que du C. Avis aux amateurs d'Emacs et de ELisp qui voudraient jeter un nouveau regard sur le JavaScript ;-)

### La guerre
Je n'étais pas le seul à trouver le JavaScript pénible. Le problème demeure le même: on *ship* du code qui sera exécuté (interprété) par des environnements hors de notre controle. Une fois *shippé*, le code devrait survivre aux nombreuses itérations des environnements. Au moins, nous avons des standards W3C, WhatWG et ECMA, mais rien ne garanti qu'ils sont implémentés, ou implémentés correctement, ou même que le standard est assez clair pour ne pas laisser de place à de multiples interprétations. Le JavaScript sur le web est à l'intersection de nombreuses influences et a un rôle difficile à jouer. N'oublions pas non plus la guerre que se livrait Microsoft et... c'était qui déjà le concurrent? Vous savez, celui qui a mis au monde «l'Open source»? En tous ças, ça me reviendra bien un jour.

Cet épisode m'a mis sur mes gardes face au JavaScript. Depuis, je privilégie une approche d'améliorations progressives, où le JavaScript n'est pas requis au bon fonctionnement d'un site, mais améliore l'expérience utilisateur. Bien entendu, dans certains cas, le JavaScript sera requis pour accomplir nos objectifs, mais peut-être pas pour toutes les fonctionnalités du site.

### Ajax
En 2005 est venu le *revival* Ajax et l'usage du JavaScript a gagné en ampleur. De nouvelles librairies sont apparues, des frameworks, et des sites qui dépendaient de JavaScript pour fonctionner. Techniquement, les fonctionnalités nécéssaires à Ajax existaient déjà dans les navigateurs depuis 1999 ou 2000, je pense à ```XMLHttpRequest()``` qui permet à un script de faire un appel HTTP. Cette mode chargée en JavaScript ne m'a jamais tellement plu d'ailleurs.

Rappel sur HTTP, ce transport supporte plusieurs méthodes, dont GET qu'on utilise chaque fois qu'on télécharge une ressource et POST pour soumettre un long formulaire à un serveur. Il existe aussi PUT, DELETE, PATCH, etc. et ces méthodes sont disponibles via ```XMLHttpRequest()``` (on dit souvent Ajax).

### HTML5
Ce qui nous amène en 2014 et l'arrivée de HTML5 et depuis, d'une [centaine](https://www.w3.org/standards/techs/js) de [nouveux API](https://spec.whatwg.org/) pour JavaScript, de l'état de la pile au stockage local en passant par le vibrateur. Parallèlement, c'est la montée du *Model-View-Controller* côté client et l'arrivée de Backbone, Ember puis Angular, React, Vue et combien d'autres. Le web se prend dorénavant pour une plateforme en bonne et due forme prête à rivaliser avec les applications bureau et mobiles. On est loin d'y être, mais on s'en approche tous les jours.

Ces développements viennent avec leur lot de complexité, et qui dit complexité dit outillage.

## La norme JavaScript
Il n'existe pas de standard qui se nomme JavaScript. Il faut plutôt se référer à la norme ECMA-262 (ECMAScript) pour trouver les bases du langage en évolution constante. JScript (Microsoft) et ActionScript (Adobe Flash, Director) aussi reposent sur ECMA-262, et [beaucoup plus](https://en.wikipedia.org/wiki/List_of_ECMAScript_engines). Vous trouverez dans cette liste des implémentations aussi bien pour les clients que pour les serveurs.

## La petite histoire, côté serveur
JavaScript n'est pas un nouveau venu sur le serveur. Ça faisait d'ailleurs partie de la stratégie de Netscape d'utiliser JavaScript côté serveur et côté client. C'est seulement quand Ryan Dahl a utilisé V8, l'engin JavaScript de Google Chrome, pour créer node.js que le langage a vraiment pris son envol côté serveur.

Historiquement, on peut énumérer:

* 1995 - Livewire (Netscape)
* 1997 - Rhino (en Java, Netscape)
* 2009 - Node.js (en C++ et JavaScript)

### Node.js (V8, Google)
Node.js repose sur l'engin JavaScript V8, précédemment utilisé par le navigateur Google Chrome, pour implémenter un serveur basé sur une architecture orientée événements et CommonJS pour la gestion des modules puisqu'à l'époque, la norme ECMA-262 ne précisait pas le concept de modules. Dorénavent, on pourra compter sur ```import``` et ```export``` tels que définis dans la norme pour gérer nos modules.

