#!/bin/bash 

# git clone 所有dockerfile项目，如果项目已经clone，则git pull
# @author Alex 

projects="nginx php-fpm php-cli mongo redis"
git_url="git@github.com:IBBD/dockerfile-"

cd ../

for p in $projects
do 
    pwd
    echo $p

    if [ -d $p ]
    then
        cd $p
        git pull 
        cd ../ 
    else 
        url=$git_url$p".git"
        git clone $url $p 
    fi
done

echo '===> All is ok.'

