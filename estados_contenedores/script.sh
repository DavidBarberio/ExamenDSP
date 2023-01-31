#!/bin/bash

# Crear los 5 contenedores con diferentes puertos
docker run -d --name container1 -p 8085:80 nginx
docker run -d --name container2 -p 8086:80 nginx
docker create --name container3 -p 8087:80 nginx
docker run -d --name container4 -p 8088:80 nginx
docker run -d --name container5 -p 8089:80 nginx

# Diferentes estados de los contenedores
docker restart container1
docker pause container4
docker stop container5

# Mostrar todos los contenedores
docker ps -a