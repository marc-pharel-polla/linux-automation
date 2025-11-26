#!/bin/bash

# Variables
SOURCE_DIR="/home/polla/Documents/info/mes pdfs/rapport" # Répertoire à sauvegarder
BACKUP_DIR="/home/polla/Backups"   # Répertoire où la sauvegarde sera stockée
DATE=$(date +%Y-%m-%d_%H-%M-%S)    # Format de la date pour le nom du fichier de sauvegarde
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz" # Nom du fichier de sauvegarde

# Créer le répertoire de sauvegarde s'il n'existe pas
mkdir -p "$BACKUP_DIR"

# Sauvegarder les fichiers en utilisant tar (compression en .tar.gz)
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Vérifier si la sauvegarde a réussi
if [ $? -eq 0 ]; then
    echo "Sauvegarde réussie ! Fichier : $BACKUP_FILE"
else
    echo "Erreur lors de la sauvegarde."
fi

