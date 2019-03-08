# THP-Boutique

1. [Ce qui fonctionne](#done)
2. [Ce qui ne fonctionne pas](#fail)
3. [On veut de l'aide !](#help)
4. [La marche à suivre](#tuto)
5. [L'équipe](#team)

## Ce qui fonctionne <a name="done"></a> :

- Le front
- Une bonne partie du back
- Devise
- Stripe
- L'ajout d'item dans le panier
- le mailer
- l'appli en local

## Ce qui ne fonctionne pas <a name="fail"></a> :

- l'appli heroku, impossible de s'inscrire ou de se connecter (enfin à cette heure-ci(1h44), le problème sera peut être réglé d'ici demain)
- l'active storage
- le bouton "ajouter au panier" de la page index
- le bouton "supprimer du panier" de la page show du cart
- pas de features bonus on a pas eu le temps(on a déjà pas fini correctement alors des trucs en plus lol)


## On veut de l'aide ! <a name="help"></a> :

Si jamais tu peux nous aider sur les problèmes suivants on est preneur :
- Pourquoi le bouton "ajouter au panier" de l'index ne fonctionne pas ? C'est la même méthode dans l'index et le show de l'item mais dans l'index il n'arrive pas à récupérer l'id de l'item sélectionné et on ne comprends pas comment régler ça.
- Comment supprimer un article du panier ? Le bouton ne semble pas capable de trouver l'item à supprimer, le chemin du bouton semble être le problème, qu'est ce qu'il manque ?
- L'active storage foutait le bordel. Impossible de se connecter ou de s'inscrire sur la branche active storage, il n'arrivait plus à trouver l'id de l'user une fois active storage mis en place. Impossible de trouver la raison.
- Heroku bloque à l'inscription, ça marche en local mais pas en prod mystère, il semblerait que le problème proviennent des migrations, j'ai voulu tenter un cycle heroku run rails (ou rake) db:drop/create/migrate/seed mais je n'ai pas les droits d'écriture sur le repo et la personne qui les a n'est pas disponible à cette heure-ci.
- Impossible d'afficher le total de la commande dans la page profil de l'user. On a tout tenté on ne sait pas comment l'appeler... Help !
- Les flashs ne fonctionnent pas. Un truc a visiblement été oublié dans la bataille, lequel ?

## La marche à suivre <a name="tuto"></a> :

- L'appli heroku n'étant pas fonctionnelle pour le moment, il va falloir passer passer par un git clone, un bundle install, un rails db:create/migrate/seed et enfin un rails server pour le tester en local (encore une fois le problème sera peut-être résolu demain matin mais rien n'est sûr). Désolé !
- Pour se connecter/s'inscrire/consulter ou éditer son profil, tout se passe dans l'onglet connexion qui portera votre nom une fois inscrit/connecté.
- Pour ajouter un article dans le panier passez par le bouton "voir le produit" et une fois dans la page show de l'item par le bouton "ajouter au panier".
- Pour consulter son panier et payer, rendez vous dans l'onglet de votre profil, une fois le paiement enregistre la commande apparaît dans le profil et un mail est envoyé à l'user et à un admin.
- J'espère n'avoir rien oublié, on sait jamais.

## L'équipe <a name="team"></a> :

- Tanguy / @Dillinger / Heroku, Back, Active Storage
- Jacky / @jack / Mailer, Back
- Djémil / @djémil / Stripe, Front, Devise
- Steph / @Steph / Devise, Front(Main), Back
- Paul / @Paul / Devise, Stripe, Front, Back, Debug

**Le lien de l'app heroku(pas à jour et pas fonctionnelle aux dernières nouvelles)**

https://boutique-dev.herokuapp.com/