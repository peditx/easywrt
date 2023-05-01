#!/bin/bash
echo "Installing OpenWrt"
# Download and install Openwrt
CPU_ARCH=$(uname -m)
if [[ "$CPU_ARCH" == "x86_64" ]]; then
    DOWNLOAD_URL="https://downloads.openwrt.org/releases/22.03.4/targets/x86/64/openwrt-22.03.4-x86-64-generic-squashfs-combined.img.gz"
elif [[ "$CPU_ARCH" == "i686" ]]; then
    DOWNLOAD_URL="https://downloads.openwrt.org/releases/22.03.4/targets/x86/generic/openwrt-22.03.4-x86-generic-generic-squashfs-combined.img.gz"
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

echo "resizing Partition 2"

# Resize the second partition to the desired size
read -p "Enter the size of partition 2 (in GB): " size

echo "Resizing partition 2..."
sudo parted /dev/sda resizepart 2 "${size}GB"

echo "Resizing file system of partition 2..."
sudo resize2fs /dev/sda2

echo "Ok done! thank you for using PeDitXrt installer. Subscribe to us on YouTube/Instagram/Telegram/Twitter @peditx"
echo "Unmounting the USB flash drive..."
sudo umount /dev/sdb

echo "Rebooting the system in 5 seconds..."
sleep 5
sudo reboot
