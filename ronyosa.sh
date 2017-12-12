#!/bin/bash

## Crea los contenedores con la estructura deseada de la empresa "Ronyosa".

docker network create --gateway 172.21.0.1 --subnet 172.21.0.0/24 ronyosanetwork 

docker build -t ronyosa/web ftpweblightssh
docker build -t ronyosa/bd basededatos
docker build -t ronyosa/backups backups

docker run -td --name=ronyosa_web --net ronyosanetwork --ip 172.21.0.10 ronyosa/web:latest

docker run -td --name=ronyosa_bd --net ronyosanetwork --ip 172.21.0.20 ronyosa/bd:latest

docker run -td --name=ronyosa_backups --net ronyosanetwork --ip 172.21.0.30 ronyosa/backups:latest

