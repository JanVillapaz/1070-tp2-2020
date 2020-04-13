# Rapport du travail pratique 2

- Ce fichier est un modèle pour vous guider dans la rédaction du rapport. La première section (et le début de la section 2) vous montrent des exemples (à compléter). Dans la cinquième section, vous trouverez un exemple de comment insérer une image dans ce fichier Markdown.
- Assurez-vous de metre **toutes** les informations demandées dans l'énoncé.
- Donner les extraits de tous les fichiers de configuration modifiés, créer des liens vers les fichiers créés ou pertinents, afficher les captures d'écran... dans les sections appropriées.
- Supprimer tous les commentaires <!--commentaires--> de votre rapport, avant de le remettre.
- Votre rapport doit respecter le format Markdown, et doit être bien formé. Il doit être clair et agréable à lire une fois traduit en HTML. Vous pouvez utiliser des applications Markdown comme `Typora` ou `Formiko`, par exemple, pour rédiger votre rapport plus facilement.
- Une pénalité être attribuée à un rapport mal formé et difficile à lire. 

## Identification du groupe

- Cours      : Utilisation et administration des systèmes informatiques
- Sigle      : INF1070
- Session    : Hiver 2020
- Groupe     : `<numéro du groupe>`
- Enseignant : `<nom de votre enseignant>`
- Auteur     : `<votre nom>` (`<votre code permanent>`) (`<votre courriel UQAM>`)
- Auteur     : `<votre nom>` (`<votre code permanent>`) (`<votre courriel UQAM>`)

## 1. Identification du système d'exploitation

### 1.1 Système d'exploitation

~~~bash
$ lsb_release  -a
<!-- Coller le resultat de la commande lsb_release -a --> 
~~~

La commande précédente nous fournit plus précisément les informations suivantes :  

<!-- À faire...-->

Avec la commande suivante : 

```bash
<!--inscrire la commande ici->
```

Nous avons trouvé que notre machine contient <nombre> paquets .  <!--Remplacer <nombre> -->

### 1.2 Liste des paquets installés

Voir le fichier [paquetsInit.txt](paquetsInit.txt). <!--Modifiez le lien au besoin...-->

### 1.2 Problèmes rencontrés

<!--Écrivez ici si vous avez ou non rencontré certains problèmes, à cette étape, et si oui, comment les avez-vous réglés. Par exemple :  -->

<!--Exemple 1 : Nous n'avons rencontré aucun problème particulier à cette étape.-->

<!--Exemple 2 : >Notre distribution Linux n'utilise pas le gestionnaire des paquetages "apt", alors on a dû chercher et trouver la bonne commande sur le site [https://inf1070.com/exemple](https://inf1070.com/exemple).-->

  


## 2. Python - Installation et configuration

### 2.1 Installation et configuration

Nous avons commencé par vérifier si `python3` était déjà installé.

~~~bash
$ python3 --version
# coller le résultat de la commande ici
~~~

Nous avons ensuite vérifié si `pip3` était déjà installé.

```bash
$ pip3 --version
# coller le résultat de la commande ici
```

Nous avons installé (ou mis à jour) `python`  avec la commande ci-après.

~~~bash
# Mettre la commande ici
~~~



<!-- À faire...-->



### 2.2 Liste des paquets installés

Voir le fichier [paquetsPython.txt](paquetsPython.txt). <!--Modifiez le lien au besoin...-->

### 2.3 Problèmes rencontrés

<!-- À faire...-->



## 3. PostgreSQL - Installation et configuration

### 3.1 Installation du SGBD, et démarrage du serveur

<!-- À faire...-->

### 3.2 Base de données : utilisateur, BD, mot de passe...

<!-- À faire...-->

### 3.3 Liste des paquets installés

<!-- À faire...-->

### 3.4 Problèmes rencontrés

<!-- À faire...-->




## 4. Odoo - Installation et configuration

###4.1 Installation

<!-- À faire...-->

#### 4.1.1 Liste des paquets installés

Voir le fichier [paquetsPrerequis.txt](paquetsPrerequis.txt). <!--Modifiez le lien au besoin...-->

###4.2 Configuration et démarrage

<!-- À faire...-->

Extrait de la section du fichier `odoo.conf` modifiée : 

```
<!-- Mettre l'extrait du fichier ici -->
```

<!-- À faire...-->

#### 4.2.1 Script shell de démarrage de Odoo

Pour démarrer Odoo, lancez le script suivant [startodoo.sh](startodoo.sh). <!--Modifiez le lien au besoin...-->



## 5. Odoo - Applications et utilisation

<!-- À faire...-->

<!-- ci-apres un exemple de d'insertion d'une image (logo UQAM) -->

![LOGO UQAM](uqam.png) 

<!--Ne pas oublier d'enlever le logo UQAM donné ici en exemple.-->



## 6. Sauvegarde et restauration

### 6.1 Base de données

Voir le fichier [odoo_bd.bak](odoo_bd.bak).  <!--Modifiez le lien au besoin...-->

### 6.2 Fichiers de données et de configuration

Voir le fichier [odoo.tar.gz](odoo.tar.gz).

Voir le fichier [odoo.conf](odoo.conf).  <!--Modifiez le lien au besoin...-->





