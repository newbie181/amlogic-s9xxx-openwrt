#!/bin/bash

# Tambah feed atau update feed jika diperlukan
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# sed -i '$a src-git openclash https://github.com/vernesong/OpenClash' feeds.conf.default

# Clone package Passwall
echo "Cloning Passwall..."
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/passwall

# Clone package OpenClash
echo "Cloning OpenClash..."
git clone --depth=1 https://github.com/vernesong/OpenClash package/luci-app-openclash

# Build dan install po2lmo (diperlukan untuk OpenClash)
echo "Building po2lmo for OpenClash..."
pushd package/luci-app-openclash/tools/po2lmo
make
sudo make install
popd
