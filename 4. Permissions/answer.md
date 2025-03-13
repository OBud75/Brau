```sh
mkdir shared
sudo chown -R toto:toto shared
sudo chown toto:toto shared/owned_by_toto
```

```sh 
chmod +x owned_by_toto
sed -i '1#!/bin/bash' owned_by_toto
```
chmod g+x permet aux utilisateurs du groupe toto d'exécuter le fichier.
chown root:root signifie que seul l'utilisateur root peut accéder au fichier.
