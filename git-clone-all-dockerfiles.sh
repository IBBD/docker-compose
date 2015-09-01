#!/bin/bash 

# git clone 所有dockerfile项目，如果项目已经clone，则git pull
# @author Alex 

projects="nginx php-fpm php-dev mongo redis mariadb"
git_url="git@github.com:IBBD/dockerfile-"

# 注意各个项目需要平级的放到同一个目录下
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

