#!/bin/bash
# 初始化

create_dir() {
    if [ ! -d $1 ]
    then
        mkdir -p $1
        echo "mkdir $1 success."
    fi
}

# 创建数据目录
create_dir /data

# 创建日志目录
create_dir /var/log

# 创建网站目录(代码目录)
create_dir /var/www 

echo '===> Init is finish!'
