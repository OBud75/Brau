La commande pour prendre en compte les changements dans la configuration des services est ``systemctl daemon-reload``

Pour démarrer ou stopper un service, il faut faire ``systemctl start service`` & ``systemctl stop service``

Restart ne fait pas repartir le service de 0, et n'essaie pas de démarrer les processus \[requires\] ou \[wants\].


Du coup on utilisera restart surtout dans les cas où on veut simplement prendre en compte des modifications de configuration.


Oui !! Cela ne fait pas repartir de 0 !!

Cela peut avoir beaucoup d'importance, par exemple pour un service de gestion de base de données tel que Postgres, stop + start créera une nouvelle connection à la base et pas restart.
