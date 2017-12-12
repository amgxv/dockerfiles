#!/bin/bash
## Para los contenedores y los quita.

docker stop ronyosa_web
docker stop ronyosa_bd
docker stop ronyosa_backups

docker rm ronyosa_web
docker rm ronyosa_bd
docker rm ronyosa_backups

