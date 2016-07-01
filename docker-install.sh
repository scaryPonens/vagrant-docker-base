#!/bin/bash

# For some reason the 'hosts' file is missing the home declaration
sed -i '1s/^/127.0.0.1 localhost/' /etc/hosts

apt-get update
apt-get install -y apt-transport-https ca-certificates

# Breaks in behind proxy
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo -e 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get purge lxc-docker

# Install extra linux image libs
apt-get install -y linux-image-extra-$(uname -r)

# (Not recommended) Use 'allow unauthenticated' to resolve behind proxy nonsense... 
apt-get install -y docker-engine docker-compose
service docker start
usermod -aG docker ubuntu
