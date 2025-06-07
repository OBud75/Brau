Les principaux log levels sont: 
DEBUG
INFO 
WARN 
ERROR 
FATAL

```sh
#!/bin/bash

currentTime=$(date)

logEntry="Utilisateur: $USER, Heure: $currentTime"

echo $logEntry >> logs
```

```sh 
sudo vi /etc/systemd/journald.conf

[Journal]
SystemMaxUse=200M
```

Il est possible de simplifier la manipulation du fichier avec sudo systemctl edit systemd-journald

```sh 
/var/log/nginx/*.log {
    monthly
    rotate 12
    compress
    delaycompress
    missingok
    notifempty
    create 644 root root
    sharedscripts
    postrotate
        if [ -f /var/run/nginx.pid ]; then
            kill -USR1 `cat /var/run/nginx.pid`
        fi
    endscript
}
```
Les règles de rotation de logs permettent de conserver de l'espace disque sur un serveur, qui n'en a pas forcément beaucoup. (ou alors merci la facture)
