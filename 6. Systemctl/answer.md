La commande pour prendre en compte les changements dans la configuration des services est ``systemctl daemon-reload``

Pour démarrer ou stopper un service, il faut faire ``systemctl start service`` & ``systemctl stop service``

Restart ne fait pas repartir le service de 0, et n'essaie pas de démarrer les processus \[requires\] ou \[wants\].


