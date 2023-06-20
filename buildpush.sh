#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t shipping-service .

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag shipping-service ghcr.io/kecoax-code/a433-microservices/shipping-service:latest

# Login ke GitHub Packages
docker login ghcr.io -u kecoax-code -p $GITHUB_TOKEN

# Mengunggah image ke GitHub Packages
docker push ghcr.io/kecoax-code/a433-microservices/shipping-service:latest