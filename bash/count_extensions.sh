#!/bin/bash

# Preguntar al usuario el directorio o tomar argumento
read -p "Dame la ruta del directorio a analizar: " DIR

# Validar si el directorio existe
if [ ! -d "$DIR" ]; then
  echo "El directorio no existe: $DIR"
  exit 1
fi

echo "Conteo de archivos por extensión en: $DIR"
echo "-------------------------------------------"

# Buscar extensiones, contarlas y ordenarlas
find "$DIR" -type f | sed -n 's/..*\.//p' | sort | uniq -c | sort -nr
