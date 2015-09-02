#!/bin/bash
# 
# ./exec.sh php-fpm
# ./exec.sh nginx

docker exec -ti php-production-$1 /bin/bash

