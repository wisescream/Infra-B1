Objectifs du projet
Configuration du réseau des machines.
Créer, extraire, compresser et gérer des archives de sauvegarde au format TAR.
Créer, gérer et automatiser les tâches cron (cron jobs).
Mettre en place une sauvegarde automatisée.
Développer un script de sauvegarde.
Écriture d'un script pour la sauvegarde des données.
Stockage vers un serveur distant.
Dépôt des sauvegardes sur un serveur distant via SSH.
Dédier un serveur au stockage (LVM2).
Restauration des données sauvegardées.
Bonus.
Configuration du réseau des machines
Assurez-vous que les machines Kali (hôte) et Ubuntu (serveur) sont correctement configurées sur le réseau. Vérifiez les paramètres de réseau, tels que les adresses IP, les masques de sous-réseau et les passerelles par défaut, pour permettre une communication entre les deux machines.

Créer, extraire, compresser et gérer des archives de sauvegarde TAR
Utilisez la commande tar pour créer des archives de sauvegarde TAR à partir des données que vous souhaitez sauvegarder. Vous pouvez également extraire, compresser et gérer ces archives à l'aide des options appropriées de la commande tar.

Créer, gérer et automatiser les cron jobs
Utilisez la commande crontab pour créer et gérer des tâches cron (cron jobs) sur la machine hôte Kali. Planifiez une tâche cron pour effectuer la sauvegarde automatisée à des intervalles réguliers. Assurez-vous de comprendre la syntaxe des tâches cron pour configurer correctement les horaires d'exécution.

Développer un script de sauvegarde
Écrivez un script pour automatiser le processus de sauvegarde. Le script devrait inclure les étapes suivantes :

Création d'une archive de sauvegarde à l'aide de la commande tar.
Compression de l'archive pour économiser de l'espace de stockage.
Transfert de l'archive compressée vers la machine serveur Ubuntu via SSH.
Stockage vers un serveur distant
Configurez un serveur dédié au stockage des sauvegardes. Utilisez LVM2 pour gérer les volumes logiques sur ce serveur. Assurez-vous que la machine serveur Ubuntu (LVM2) dispose de suffisamment d'espace de stockage pour recevoir les sauvegardes.

Utilisez le protocole SSH pour transférer les sauvegardes depuis la machine Kali vers le serveur Ubuntu. Configurez les autorisations et les clés SSH appropriées pour permettre une connexion sécurisée entre les deux machines.

Restauration des données sauvegardées
Prévoyez une méthode pour restaurer les données à partir des sauvegardes. Assurez-vous de tester la procédure de restauration pour vérifier son bon fonctionnement.
