```sh  
mkdir assets && cd assets
```

```sh
max=10
for (( i=1; i <= $max; ++i ))
do
    touch "img_"$i".png"
done

```
On peut aussi faire

touch img_{1..10}.png

Si la syntaxe avec la boucle vous semble plus explicite (et donc moins susceptible d'introduire des erreurs), gardez celle la

```sh
touch du_texte.txt && echo "Hello, World" > du_texte.txt
```

```sh
max=10
for (( i=1; i <= $max; ++i ))
do
    mv "img_"$i".png" "img_"$i".jpeg"
done

```

```sh
mkdir media
mv *.jpeg media
```

Les formats de fichier servent à représenter facilement le type de fichier auquel l'utilisateur peut s'attendre. Il n'y a cependant pas besoin de mettre les extensions de fichier dans Linux, à part pour l'ergonomie.

Oui

Dans certains cas (à la marge) cela aide le programme lancé pour lire le fichier

Un bon exemple est la manière dont certaines applications graphiques ou multimédias sous Linux se comportent :

Si on essaiee d’ouvrir un fichier .jpg avec un éditeur de texte comme nano, il ne prendra pas en compte l’extension et affichera du texte illisible.

Par contre, si on le renomme en .txt et qu'on tente de l’ouvrir avec "Eye of GNOME" (visionneuse d'images), il refusera de le charger.

```sh
touch script

echo "#\!/usr/bin/bash" >> script
echo "echo \" Hello, World\"" >> script

chmod +x script

./script
```

La première ligne d'un script contient le shebang, qui indique au shell quel interpréteur utiliser quand on exécute un programme avec `./` .
Si on utilise ``bash script`` à la place, le script sera exécuté par bash sans tenir compte du shebang. 

Oui

Il y a une petite subtilité côté permissions : 

Avec ./script, la présence des permissions d'exécution est indispensable car le système vérifie que le fichier est exécutable.

Avec bash script, bash lit simplement le contenu du fichier grâce aux permissions de lecture.
