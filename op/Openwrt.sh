#!/bin/bash
echo "Installing OpenWrt"
# Download and install Openwrt
CPU_ARCH=$(uname -m)
if [[ "$CPU_ARCH" == "x86_64" ]]; then
    DOWNLOAD_URL="https://downloads.openwrt.org/releases/23.05.5/targets/x86/64/openwrt-22.03.4-x86-64-generic-squashfs-combined.img.gz"
elif [[ "$CPU_ARCH" == "i686" ]]; then
    DOWNLOAD_URL="https://downloads.openwrt.org/releases/23.05.5/targets/x86/generic/openwrt-22.03.4-x86-generic-generic-squashfs-combined.img.gz"
else
    echo "Unsupported CPU architecture: $CPU_ARCH"
    exit 1
fi
curl -L -o peditx.img.gz "$DOWNLOAD_URL"
gzip -d peditx.img.gz
if [[ -e "/dev/sda" ]]; then
    sudo dd if=peditx.img of=/dev/sda bs=4M status=progress
else
    sudo dd if=peditx.img of=/dev/vda bs=4M status=progress
fi 
bash resize.sh
