#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t karsajobs .

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs ghcr.io/kecoax-code/a433-microservices/karsajobs:latest

# Login ke GitHub Packages
docker login ghcr.io -u kecoax-code -p $CR_PAT

# Mengunggah image ke GitHub Packages
docker push ghcr.io/kecoax-code/a433-microservices/karsajobs:latest