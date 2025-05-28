#!/bin/bash

# Bersihkan package yang mungkin sudah ada sebelumnya
rm -rf package/passwall
rm -rf package/passwall-packages
rm -rf package/luci-app-openclash
rm -rf po2lmo

# Clone Passwall utama
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/passwall

# Clone dependensi tambahan Passwall (chinadns-ng, dns2socks, trojan-go, v2ray-core, dll)
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages package/passwall-packages

# Clone OpenClash
git clone --depth=1 https://github.com/vernesong/OpenClash package/luci-app-openclash

# Build dan install po2lmo (diperlukan oleh OpenClash)
git clone https://github.com/openwrt-dev/po2lmo.git
pushd po2lmo
make
sudo make install
popd