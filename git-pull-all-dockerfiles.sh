#!/bin/bash 

cd ../ 

dir_list=$(ls)

for dir in $dir_list 
do 
    echo $dir 
    cd $dir 
    git pull 

    # 回到上级目录
    cd ../
done

