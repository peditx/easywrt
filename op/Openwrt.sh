#!/bin/bash

echo "Installing OpenWrt"

# Define CPU architecture and set download URL
CPU_ARCH=$(uname -m)
if [[ "$CPU_ARCH" == "x86_64" ]]; then
    DOWNLOAD_URL="https://downloads.openwrt.org/releases/23.05.5/targets/x86/64/openwrt-22.03.4-x86-64-generic-squashfs-combined.img.gz"
elif [[ "$CPU_ARCH" == "i686" ]]; then
    DOWNLOAD_URL="https://downloads.openwrt.org/releases/23.05.5/targets/x86/generic/openwrt-22.03.4-x86-generic-generic-squashfs-combined.img.gz"
else
    echo "Unsupported CPU architecture: $CPU_ARCH"
    exit 1
fi

# Remove old image file if it exists
if [[ -f "peditx.img.gz" ]]; then
    echo "Removing old peditx.img.gz file..."
    rm peditx.img.gz
fi

# Download the OpenWrt image
echo "Downloading OpenWrt image..."
curl -L -o peditx.img.gz "$DOWNLOAD_URL"
if [[ $? -ne 0 ]]; then
    echo "Error downloading the OpenWrt image. Exiting."
    exit 1
fi

# Extract the image file
echo "Extracting OpenWrt image..."
gzip -d peditx.img.gz
if [[ $? -ne 0 ]]; then
    echo "Error extracting the OpenWrt image. Exiting."
    exit 1
fi

# Write the image to the disk
if [[ -e "/dev/sda" ]]; then
    TARGET_DISK="/dev/sda"
else
    TARGET_DISK="/dev/vda"
fi

echo "Writing OpenWrt image to $TARGET_DISK..."
sudo dd if=peditx.img of="$TARGET_DISK" bs=4M status=progress
if [[ $? -ne 0 ]]; then
    echo "Error writing the OpenWrt image to $TARGET_DISK. Exiting."
    exit 1
fi

# Run the resize script if it exists
if [[ -f "resize.sh" ]]; then
    echo "Running resize script..."
    bash resize.sh
else
    echo "resize.sh script not found. Skipping resize."
fi
