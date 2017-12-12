#!/bin/bash
# Borra todos los contenedores/estructura de la empresa "Ronyosa"

docker stop ronyosa_web
docker stop ronyosa_bd
docker stop ronyosa_backups

docker rm ronyosa_web
docker rm ronyosa_bd
docker rm ronyosa_backups

docker rmi ronyosa/web
docker rmi ronyosa/bd
docker rmi ronyosa/backups
