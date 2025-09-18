#!/bin/bash

target_dir="${1}"

if [ -z "$target_dir" ]; then
  read -p "Introduce la ruta de la carpeta donde buscar .txt: " target_dir
fi

# Validar que exista el directorio
if [ ! -d "$target_dir" ]; then
    echo "El directorio no existe: $target_dir"
    exit 1
fi

# Archivo de salida
output_file="reporte.txt"
echo "Archivo | Líneas | Palabras | Caracteres" > "$output_file"

# Recorrer todos los .txt
shopt -s nullglob  # evita iterar con literal si no hay .txt
for file in "$target_dir"/*.txt; do
    if [ -f "$file" ]; then
        lineas=$(wc -l < "$file")
        palabras=$(wc -w < "$file")
        caracteres=$(wc -m < "$file")
        echo "$(basename "$file") | $lineas | $palabras | $caracteres" >> "$output_file"
    fi
done

echo "Análisis completado. Resultados en $output_file"


