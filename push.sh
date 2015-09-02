#!/bin/bash

docker tag ibbd/$1 git.ibbd.net:5000/ibbd/$1
docker push git.ibbd.net:5000/ibbd/$1

docker rmi git.ibbd.net:5000/ibbd/$1
docker images

