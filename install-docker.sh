#!/bin/bash

wget -qO- https://get.docker.com/gpg | sudo apt-key add -
wget -qO- https://get.docker.com/ | sh

# install pip
sudo apt-get install python-pip

# docker-compose
sudo pip install -U docker-compose
sudo chmod +x /usr/local/bin/docker-compose 

docker -v
docker info
docker-compose -v

# 在阿里云上得修改一下路由表, 因为 docker 的虚拟子网是在这个 prefix 里的 
# 否则可能会出现错误：connect to the Docker daemon. Is 'docker -d' running on this host?
# @see http://segmentfault.com/q/1010000000438713
#sudo route del -net 172.16.0.0 netmask 255.240.0.0  

