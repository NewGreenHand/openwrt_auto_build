#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 添加软件包 Lienol/openwrt-package
sed -i 'src-git laohu https://github.com/huchanghui123/Lienol-openwrt-packages-backup' feeds.conf.default
sed -i 'src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# if [ ! -d "./package/myapp" ];then
# mkdir ./package/myapp
#fi
# cd ./package/myapp

# 下载 adguard home
# echo "luci-app-adguardhome"
# if [ ! -d "./luci-app-adguardhome" ];then
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
# else
# cd luci-app-adguardhome
# git pull
# cd ..
# fi

