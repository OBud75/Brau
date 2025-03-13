```sh 
mkdir environ && cd environ 
```

```sh 
#!/bin/bash

read -p "entrez la valeur de ENVIRON: " TEMP

case "$TEMP" in
  "dev") export ENVIRON="dev"
         echo "Succès"
  ;;
  "prod") export ENVIRON="prod"
         echo "Succès"
  ;;
  "test") export ENVIRON="test"
  echo "Succès"
  ;;
  *) echo "Erreur"
  ;;
esac
```

```sh 
python -m venv pythonvenv
cd pythonvenv
. bin/activate
pip install Flask
pip freeze >> requirements.txt 
```
Cette dernière commande permet de vérifier que les prérequis seront bien installés et facilement accessibles le cas échéant.

```sh
echo "environ/pythonvenv" >> .gitignore
```
Cela permet à git d'ignorer le dossier pythonvenv qui contient de nombreux fichiers installables avec pip. Il est approprié d'ajouter les dépendances de son code à gitignore, car elles n'ont pas vocation à être stockées en ligne car téléchargeables facilement.

`apt upgrade && apt update` sert à mettre à jour la liste des paquets disponibles en lignes ainsi que leurs versions, et apt update sert à mettre à jour les paquets installés.

`apt clean` supprime tous les paquets du cache
`apt autoclean` ne supprime que les paquets qui ne sont plus accessibles (ancienne version ou paquet supprimé)
`apt autoremove` supprime les paquets qui ne servent à rien dans le système (paquets orphelins)
`apt purge` supprime un paquet ainsi que tous les fichiers associés (conf, données diverses..)


