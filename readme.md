# Projet : Sauvegarde (Backup & Restore and Replication)

## Présentation
LIPS est une société basée à Taiwan qui se concentre sur le conditionnement des semi-conducteurs et les services de test pour les marchés des PC, des communications et des circuits intégrés grand public. Ils ont de nombreux clients indirects tels que IBM, Cisco et autres.

Vous avez été contacté par LIPS pour sécuriser le flux de travail, car certains opérateurs de l'usine souhaitent détourner une partie des données produites pour les revendre au marché noir. Ils ont besoin de votre aide pour mettre en place un système de sauvegarde qui serait placé dans les salles de serveurs de production. Cela permettra d'assurer une plus grande sécurité des données à travers leur pérennisation.

Dans ce projet, vous devez configurer la sauvegarde de la première machine client LVM1 et stocker les données via SSH sur la seconde machine serveur LVM2.

## Objectifs du projet
- Configuration du réseau des machines.
- Créer, extraire, compresser et gérer des archives de sauvegarde au format TAR.
- Créer, gérer et automatiser les tâches cron (cron jobs).
  - Mettre en place une sauvegarde automatisée.
- Développer un script de sauvegarde.
  - Écriture d'un script pour la sauvegarde des données.
- Stockage vers un serveur distant.
  - Dépôt des sauvegardes sur un serveur distant via SSH.
- Dédier un serveur au stockage (LVM2).
- Restauration des données sauvegardées.
- Bonus.

## Configuration du réseau des machines
Assurez-vous que les machines Kali (hôte) et Ubuntu (serveur) sont correctement configurées sur le réseau. Vérifiez les paramètres de réseau, tels que les adresses IP, les masques de sous-réseau et les passerelles par défaut, pour permettre une communication entre les deux machines.

## Créer, extraire, compresser et gérer des archives de sauvegarde TAR
Utilisez la commande `tar` pour créer des archives de sauvegarde TAR à partir des données que vous souhaitez sauvegarder. Vous pouvez également extraire, compresser et gérer ces archives à l'aide des options appropriées de la commande `tar`.

## Créer, gérer et automatiser les cron jobs
Utilisez la commande `crontab` pour créer et gérer des tâches cron (cron jobs) sur la machine hôte Kali. Planifiez une tâche cron pour effectuer la sauvegarde automatisée à des intervalles réguliers. Assurez-vous de comprendre la syntaxe des tâches cron pour configurer correctement les horaires d'exécution.

## Développer un script de sauvegarde
Écrivez un script pour automatiser le processus de sauvegarde. Le script devrait inclure les étapes suivantes :
1. Création d'une archive de sauvegarde à l'aide de la commande `tar`.
2. Compression de l'archive pour économiser de l'espace de stockage.
3. Transfert de l'archive compressée vers la machine serveur Ubuntu via SSH.

## Stockage vers un serveur distant
Configurez un serveur dédié au stockage des sau

vegardes. Utilisez LVM2 pour gérer les volumes logiques sur ce serveur. Assurez-vous que la machine serveur Ubuntu (LVM2) dispose de suffisamment d'espace de stockage pour recevoir les sauvegardes.

Utilisez le protocole SSH pour transférer les sauvegardes depuis la machine Kali vers le serveur Ubuntu. Configurez les autorisations et les clés SSH appropriées pour permettre une connexion sécurisée entre les deux machines.

## Restauration des données sauvegardées
Prévoyez une méthode pour restaurer les données à partir des sauvegardes. Assurez-vous de tester la procédure de restauration pour vérifier son bon fonctionnement.
## Comment marche la sauvegarde 
La sauvegarde se fait automatiquement tous les Lundi et Vendredi a 6h du matin .
Si la personne souhaite la faire automatiquement , la personne devra lancer le script backup.sh (sur la machine cliente) avec la commande `sh backup.sh` puis renter le mot de passe de la machine hote `kali` dans notre cas.

## Comment faire la restauration
la personne devra lancer le script backup.sh (sur la machine cliente) avec la commande `sh restore.sh` depuis la machine cliente dans notre cas.
