#!/bin/bash
GITHUB_USER=$1
RESPONSE=$(curl -s https://api.github.com/users/$GITHUB_USER)
GITHUB_USER=$(echo $RESPONSE | jq -r '.login')
ID=$(echo $RESPONSE | jq -r '.id')
CREATED_AT=$(echo $RESPONSE | jq -r '.created_at')
echo "Hola $GITHUB_USER. User ID: $ID. Cuenta fue creada el: $CREATED_AT."
FECHA=$(date +%Y-%m-%d)
mkdir -p /tmp/$FECHA
echo "Hola $GITHUB_USER. User ID: $ID. Cuenta fue creada el: $CREATED_AT." >> /tmp/$FECHA/saludos.log

# Crear el cronjob para ejecutar el script cada 5 minutos. Añadir la siguiente línea al final del crontab
# */5 * * * * root /path/to/script.sh $GITHUB_USER
