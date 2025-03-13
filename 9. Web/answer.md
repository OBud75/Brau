http (hypertext transfer protocol) est un protocole de transfert de données servant notamment à afficher des sites web.
Ce protocole n'est pas sécurisé et envoie toutes les données en clair.
Pour y remédier on utilise maintenant le protocole https (secure) chiffre les données.

Pour faire des requêtes http on peut utiliser Postman ou FRequest.

Ports:
22 ssh
80 http 
443 https

Pour désactiver le parefeu on peut utiliser `sudo systemctl stop ufw`
Pour l'activer: `sudo systemctl start ufw`
Pour lister les règles: `sudo ufw status`

Le programme NGINX est un serveur web, qui permet de recevoir des requêtes http(s) et envoyer du contenu, généralement un site web ou une réponse d'API.

MVC signifie Modèle Vue Contrôleur, et permet une maintenance simple de par la séparation claire des différentes parties. 

CRUD signifie Create Read Update Delete, et décrit une manière de programmer un backend pour faire des requêtes à une BDD. 
