#!/bin/bash
# sudo ./pull.sh nginx
# sudo ./pull.sh php-fpm

source ./.env.sh 

docker pull $docker_registry:5000/ibbd/$1 \
    && docker tag $docker_registry:5000/ibbd/$1 ibbd/$1 \
    && docker rmi $docker_registry:5000/ibbd/$1

echo "===> pull ibbd/$1 had done!"
