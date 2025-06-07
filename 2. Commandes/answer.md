```sh 
mkdir commands && cd commands
```

```sh 
touch too_long

max=100
for (( i=1; i <= $max; ++i ))
do
    echo "Ligne $i" >> too_long
done
``` 

On peut penser à faire

```echo Ligne{1..100} > too_long```

Probleme : cela ne va pas revenir à la ligne mais écrire : "Ligne1 Ligne2 Ligne3 ..."

Du coup, ajouter des "\n"

Problème : 

```echo "Ligne{1..100}\n"``` 

Ne fonctionnera pas car il y a un formattage de la chaine

Ici c'est possiblement un bon cas d'utilisation pour printf

``` printf "Ligne %s\n" {1..100} > too_long``` 


```sh 
head -n 5 too_long
tail -n 7 too_long
cat too_long | grep -o '[0-9]\+' | sort -n -r | head -n 3
```

```sh 
cat too_long | grep "42"
``` 

```sh 
sed -i -e 's/Ligne 42/the ultimate question of life, the universe and everything/g' too_long
```

```sh 
touch script
```
Contenu du script: 
```sh 
#!/bin/bash

function check_argv()
{
  if [[ $1 = NULL ]]; then
    echo "0";
    exit 0;
  else
    echo "1"
    exit 1;  
  fi
}

case $2 in
 hello) echo "hello"
 ;;
 toto) echo "toto"
 ;;
 *) echo "autre chose"
 ;;
esac

check_argv $1;
```

Un if/else fait tous les tests jusqu'à trouver un résultat correct ou arriver à la fin des tests, alors que le case ne fait que le test nécessaire.


C'est ca, du coup dans les faits on aura tendance à utiliser un switch quand tous les cas on à peu près autant de chance d'arriver,

Alors qu'avec un if/else if on vérifie des conditions spécifiques (de la plus probable à la moins probable).

Niveau algo, sauf optimisation spécifique, if/else if/else sera linéaire O(n)

Pour un switch pareil cela dépend de l'implémentation du compilateur mais à priori il va générer une jump table et l'algo sera donc en O(1), similiaire à une hash table.
