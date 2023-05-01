#!/bin/bash
echo "Installing PeDitXrt"
# Download and install PeDitXrt
CPU_ARCH=$(uname -m)
if [[ "$CPU_ARCH" == "x86_64" ]]; then
    DOWNLOAD_URL="https://github.com/peditx/PeDitXrt/releases/latest/download/PeDitXrt-x86-64-generic-ext4-combined.img.gz"
elif [[ "$CPU_ARCH" == "i686" ]]; then
    DOWNLOAD_URL="https://github.com/peditx/PeDitXrt/releases/latest/download/PeDitXrt-x86-generic-generic-ext4-combined.img.gz"
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
wget https://github.com/peditx/easywrt/blob/8b6af3431dc98a8e5657b5e0125b23fce6e7323e/op/alt.sh
chmod +x alt.sh
./alt.sh
