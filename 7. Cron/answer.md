Pour lister les tâches cron de l'utilisateur actuel il suffit de faire ``crontab -l``

```sh 
crontab -e
30 1 * * 3, /path/owned_by_toto
```

Les dossiers cron.weekly, cron.hourly et cron.monthly exécutent toutes les semaines, heures, et mois les commandes contenues.


