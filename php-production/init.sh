#!/bin/bash
#
# 生成环境初始化 
# 假设已经设置好ibbd用户了
#
# /var/www/ 这个是代码目录
# /var/www/docker dockerfile等相关项目目录
# /data/ 这个是数据目录
#

# 目录常量
root_code=/var/www/
root_docker=$root_code"docker/"
root_data=/data/

# 初始化项目
init_project() {
    if [ -d $1 ]
    then
        cd $1
        git pull
        cd ../
    else
        git clone git@github.com:IBBD/dockerfile-$1".git" $1
        cd $1
        source init.sh
        cd ../
    fi
}

# git clone dockerfile for php and nginx
cd $root_docker 
init_project nginx
init_project php-fpm

echo '===> All is finish!'
