#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t karsajobs-ui .

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs-ui ghcr.io/kecoax-code/a433-microservices/karsajobs-ui:latest

# Login ke GitHub Packages
docker login ghcr.io -u kecoax-code -p $GITHUB_TOKEN

# Mengunggah image ke GitHub Packages
docker push ghcr.io/kecoax-code/a433-microservices/karsajobs-ui:latest