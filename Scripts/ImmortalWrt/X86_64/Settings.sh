#!/bin/bash

# 定义变量
WRT_IP=192.168.100.3
WRT_NAME=OpenWrt

# 函数：修改配置文件
modify_config_file() {
    local file_path=$1
    local pattern=$2
    local replacement=$3
    sed -i "s/$pattern/$replacement/g" $file_path
}

# 修改默认IP地址和主机名
CFG_FILE="./package/base-files/files/bin/config_generate"
modify_config_file $CFG_FILE "192\.168\.[0-9]*\.[0-9]*" $WRT_IP
modify_config_file $CFG_FILE "hostname='.*'" "hostname='$WRT_NAME'"

# 配置文件修改
echo "CONFIG_PACKAGE_luci=y" >> ./.config
echo "CONFIG_LUCI_LANG_zh_Hans=y" >> ./.config