#!/bin/bash

SOURCE_DIR="data"
BACKUP_DIR="backup"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="backup_$DATE.tar.gz"

if [ -d "$SOURCE_DIR" ]; then
  echo "Source directory exists: $SOURCE_DIR"
  mkdir -p "$BACKUP_DIR"
  tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

  if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_DIR/$BACKUP_FILE"
  else
    echo "Backup failed"
  fi
else
  echo "Source directory does not exist: $SOURCE_DIR"
fi







