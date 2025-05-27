#!/bin/bash

# Hapus folder lama
rm -rf package/passwall
rm -rf package/luci-app-openclash

# Clone Passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/passwall

# Clone OpenClash
git clone --depth=1 https://github.com/vernesong/OpenClash package/luci-app-openclash

# Install po2lmo (diperlukan OpenClash)
git clone https://github.com/openwrt-dev/po2lmo.git
pushd po2lmo
make
sudo make install
popd
