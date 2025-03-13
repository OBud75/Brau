```sh 
sudo cut -d: -f1 /etc/passwd
```

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

Pour donner à toto le droit d'utiliser `apt install` avec `sudo`, il faut ajouter cette ligne :
```sh 
toto ALL=(ALL) NOPASSWD: /usr/bin/apt update
```

Pour que Toto puisse utiliser sudo en permanence, il faut l'ajoute au groupe `sudo` ou `wheel`.
Éxecuter toutes les commandes en root peut causer des dégâts irréversibles sur la machine car certains fichiers ne doivent pas être modifiés directement par l'utilisateur.

Pour qu'un message de bienvenue apparaisse sur son shell, Toto peut ajouter une ligne dans son `.bashrc` :
```sh 
echo "bienvenue $USER !" 
```


