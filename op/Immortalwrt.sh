#!/bin/bash
echo "Installing ImmortalWRT"
# Download and install Openwrt
CPU_ARCH=$(uname -m)
if [[ "$CPU_ARCH" == "x86_64" ]]; then
    DOWNLOAD_URL="https://downloads.immortalwrt.org/releases/23.05.4/targets/x86/64/immortalwrt-23.05.4-x86-64-generic-squashfs-combined.img.gz"
elif [[ "$CPU_ARCH" == "i686" ]]; then
    DOWNLOAD_URL="https://downloads.immortalwrt.org/releases/23.05.4/targets/x86/generic/immortalwrt-23.05.4-x86-generic-generic-squashfs-combined.img.gz"
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
