Pour lister les tâches cron de l'utilisateur actuel il suffit de faire ``crontab -l``

```sh 
crontab -e
30 1 * * 3, /path/owned_by_toto
```

Les dossiers cron.weekly, cron.hourly et cron.monthly exécutent toutes les semaines, heures, et mois les commandes contenues.


Quelques subtilités : 

Dans la logique, les taches .weekly, hourly, monthly sont le plus souvent effectuées par le système (souvent par root).

Alors que les autres sont souvent executées par un utilisateur (postgres, nginx, un humain etc).

Dernier détail : sur certaines distributions, les taches liées à un utilisateur sont dans /var
