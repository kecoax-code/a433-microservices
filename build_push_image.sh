#!/bin/bash

# Membuat Docker image dari Dockerfile dengan nama item-app:v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/kecoax-code/a433-microservices/item-app:v1

# Login ke GitHub Packages
# di terminal : export TOKEN_GITHUB=<ghp_xxxx>
docker login ghcr.io -u kecoax-code -p $TOKEN_GITHUB

# Mengunggah image ke GitHub Packages
docker push ghcr.io/kecoax-code/a433-microservices/item-app:v1
