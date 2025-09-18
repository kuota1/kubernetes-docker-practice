#!/bin/bash

# Ruta del directorio a respaldar
SOURCE_DIR="my_data"

# Ruta del directorio de respaldo
BACKUP_DIR="backup"

# Fecha actual para el nombre del archivo
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Nombre del archivo de respaldo
BACKUP_FILE="backup_$DATE.tar.gz"

# Crear el directorio de respaldo si no existe
mkdir -p "$BACKUP_DIR"


# Crear el archivo comprimido
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

# Confirmar resultado
if [ $? -eq 0 ]; then
  echo "✅ Backup successful: $BACKUP_DIR/$BACKUP_FILE"
else
  echo "❌ Backup failed"
fi
