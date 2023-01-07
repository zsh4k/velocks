#!/bin/bash

#Crear carpeta
mkdir dockers
cd dockers/

#Descargar containerd
wget https://download.docker.com/linux/debian/dists/bullseye/pool/stable/amd64/containerd.io_1.6.14-1_amd64.deb

#Descargar CLI
wget https://download.docker.com/linux/debian/dists/bullseye/pool/stable/amd64/docker-ce-cli_20.10.22~3-0~debian-bullseye_amd64.deb

#Descargar Docker Engine
wget https://download.docker.com/linux/debian/dists/bullseye/pool/stable/amd64/docker-ce_20.10.22~3-0~debian-bullseye_amd64.deb

#Descargar Docker Compose
wget https://download.docker.com/linux/debian/dists/bullseye/pool/stable/amd64/docker-compose-plugin_2.14.1~debian-bullseye_amd64.deb

#Instalar containerd
dpkg -i ./containerd.io_1.6.14-1_amd64.deb
#Instalar CLI
dpkg -i ./docker-ce-cli_20.10.22~3-0~debian-bullseye_amd64.deb
#Instalar Docker Engine
dpkg -i ./docker-ce_20.10.22~3-0~debian-bullseye_amd64.deb
#Instalar Docker Compose
dpkg -i ./docker-compose-plugin_2.14.1~debian-bullseye_amd64.deb

#Verificar Version
docker version

#Reiniciar
reboot
