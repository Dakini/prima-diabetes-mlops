#!/bin/bash

# Update the package list and install Docker
sudo apt update -y
sudo apt install docker.io -y

# Add the current user (ubuntu) to the docker group
sudo usermod -aG docker ubuntu

# Download Docker Compose and set the permissions
sudo wget https://github.com/docker/compose/releases/download/v2.29.0/docker-compose-linux-x86_64 -O /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Source the .bashrc file to apply the changes
source ~/.bashrc
