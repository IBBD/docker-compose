#!/bin/bash
# 
# sudo ./push.sh nginx

source ./.env.sh 

docker tag ibbd/$1 $docker_registry:5000/ibbd/$1
docker push $docker_registry:5000/ibbd/$1

docker rmi $docker_registry:5000/ibbd/$1
docker images

echo "==> push ibbd/$1 had done!"
