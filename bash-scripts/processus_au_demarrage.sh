#!/bin/bash

# Script pour vérifier les processus démarrés automatiquement

echo "Analyse des processus lancés au démarrage..."

# Liste des services activés pour démarrer avec le système
echo -e "\n--- Services activés au démarrage ---"
systemctl list-unit-files --type=service --state=enabled

# Recherche de tâches Cron @reboot
echo -e "\n--- Tâches cron exécutées au démarrage ---"
crontab -l 2>/dev/null | grep "@reboot" || echo "Aucune tâche @reboot configurée."

echo "Analyse terminée !"

