#!/bin/bash

source ./.env.sh 

docker tag ibbd/$1 $docker_registry:5000/ibbd/$1
docker push $docker_registry:5000/ibbd/$1

docker rmi $docker_registry:5000/ibbd/$1
docker images

