#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# 修改默认IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 修改默认名称
sed -i 's/LEDE/H29K/g' package/base-files/files/bin/config_generate

# 修改 WiFi 名称（SSID）从 LEDE → H29K
sed -i 's/set wireless.default_radio${devidx}.ssid=LEDE/set wireless.default_radio${devidx}.ssid=H29K/g' \
    package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改加密方式（none → psk2）并添加密码（1234567890）
sed -i 's/set wireless.default_radio${devidx}.encryption=none/set wireless.default_radio${devidx}.encryption=psk2\\n\\t\\t\\t set wireless.default_radio${devidx}.key=1234567890/g' \
    package/kernel/mac80211/files/lib/wifi/mac80211.sh

