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

```sh
touch script

echo "#\!/usr/bin/bash" >> script
echo "echo \" Hello, World\"" >> script

chmod +x script

./script
```

La première ligne d'un script contient le shebang, qui indique au shell quel interpréteur utiliser quand on exécute un programme avec `./` .
Si on utilise ``bash script`` à la place, le script sera exécuté par bash sans tenir compte du shebang. 
