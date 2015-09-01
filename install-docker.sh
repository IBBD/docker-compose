#!/bin/bash

wget -qO- https://get.docker.com/gpg | sudo apt-key add -
wget -qO- https://get.docker.com/ | sh

# install pip
sudo apt-get install python-pip

# docker-compose
sudo pip install -U docker-compose
sudo chmod +x /usr/local/bin/docker-compose 

docker -v
docker-compose -v

