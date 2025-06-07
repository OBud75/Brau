```sh 
sudo cut -d: -f1 /etc/passwd
```

On préferera souvent utiliser getent passwd (qui utilise la base de données systeme).

On abstrait le fait que les utilisateus sont stockés dans un fichier pour ne pas être tenté de modifier le fichier directement au lieu des programmes comme useradd etc (et donc de faire des erreurs potentielles).

Encore une fois cela dépendra toujours du contexte et de ce que vous êtes en train de faire.

```sh 
sudo adduser --ingroup toto toto
```

```sh
id toto
```

```sh 
sudo addgroup shared
sudo usermod -aG toto shared
sudo usermod -aG marthe shared 
```
Préfixer une commande par sudo permet d'éxecuter la commande avec l'utilisateur `root`, qui a tous les droits sur la machine. C'est comme le compte administrateur de Windows.
Pour qu'un utilisateur puisse utiliser une commande avec sudo il doit être dans le groupe `sudo` ou `wheel`.


C'est assez subtil mais sudo permet d'executer la commande avec les droits de root, et non l'utilisateur.


Pour donner à toto le droit d'utiliser `apt install` avec `sudo`, il faut ajouter cette ligne :
```sh 
toto ALL=(ALL) NOPASSWD: /usr/bin/apt update
```

Pour que Toto puisse utiliser sudo en permanence, il faut l'ajoute au groupe `sudo` ou `wheel`.
Éxecuter toutes les commandes en root peut causer des dégâts irréversibles sur la machine car certains fichiers ne doivent pas être modifiés directement par l'utilisateur.


Le point important à noter est qu'utiliser sudo élève les droits mais uniquement pour la commande qui suit surtout cela demandera le mot de passe contrairement à root qui peut tout supprimer sans qu'on ne lui demande aucune vérification


Pour qu'un message de bienvenue apparaisse sur son shell, Toto peut ajouter une ligne dans son `.bashrc` :
```sh 
echo "bienvenue $USER !" 
```


