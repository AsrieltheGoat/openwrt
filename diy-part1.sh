#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i '/^src-git other https:\/\/github.com\/Lienol\/openwrt-package.git;other$/d' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-link custom /home/runner/openwrt/packages' >>feeds.conf.default

# sms-tool
echo 'src-git smstool https://github.com/4IceG/luci-app-sms-tool' >>feeds.conf.default
echo 'src-git 3ginfo https://github.com/4IceG/luci-app-3ginfo-lite' >>feeds.conf.default

# modemnanager luci
echo 'src-git luci_proto_modemmanager https://github.com/nickberry17/luci-proto-modemmanager' >>feeds.conf.default