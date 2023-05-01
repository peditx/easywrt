#!/bin/bash
echo "resizing Partition 2"
# Resize the second partition to the desired size

read -p "Enter the size of partition 2 (in GB): " size
    echo "Resizing partition 2..."
    parted /dev/sda resizepart 2 ${size}GB
    echo "Resizing file system of partition 2..."
    resize2fs /dev/sda2


echo "Ok done! thank you for using PeDitXrt installer subscribe us on Youtube/Instagram/Telegram/Twitter @peditx"
echo "Unmounting the USB flash drive..."

sudo umount /dev/sdb

echo "Rebooting the system in 5 seconds..."
sleep 5
reboot
