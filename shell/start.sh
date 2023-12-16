#!/bin/bash



data_folder="/root/yakit-projects/"
def_db_file="/root/default-yakit.db"

# 检查/data文件夹是否为空或不存在
if [ ! -d "$data_folder" ] || [ -z "$(ls -A $data_folder)" ]; then
  # 创建/data文件夹
  mkdir -p "$data_folder"
  
  # 复制/root/default-yakit.db到/data文件夹下
  cp "$def_db_file" "$data_folder"
fi




yak grpc --host 0.0.0.0 --port 28087