#!/bin/bash
# Download and install Custome Link
echo "Installing Custom OS"
    read -p "please insert the link: " link
    curl -L -o peditx.img.gz "$link"
    gzip -d peditx.img.gz
    if [[ -e "/dev/sda" ]]; then
        sudo dd if=peditx.img of=/dev/sda bs=4M status=progress
    else
        sudo dd if=peditx.img of=/dev/vda bs=4M status=progress
    fi
wget https://github.com/peditx/easywrt/blob/ad10f9fe7c56c2bf3ed20067b418d976160d93a0/op/alt.sh
chmod +x alt.sh
./alt.sh
