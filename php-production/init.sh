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

# git clone dockerfile for php and nginx
cd $root_docker 
git clone git@github.com:IBBD/dockerfile-php-fpm.git php-fpm
git clone git@github.com:IBBD/dockerfile-nginx.git nginx

# 初始化nginx的配置文件
cd nginx
source init.sh
cd ../

# 初始化php的配置文件
cd php-fpm
source init.sh
cd ../

