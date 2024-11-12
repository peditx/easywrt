#!/bin/bash
echo "
 _______           _______  __   __     __    __            __          
|       \         |       \|  \ |  \   |  \  |  \          |  \         
| ▓▓▓▓▓▓▓\ ______ | ▓▓▓▓▓▓▓\\▓▓_| ▓▓_  | ▓▓  | ▓▓ ______  _| ▓▓_        
| ▓▓__/ ▓▓/      \| ▓▓  | ▓▓  \   ▓▓ \  \▓▓\/  ▓▓/      \|   ▓▓ \       
| ▓▓    ▓▓  ▓▓▓▓▓▓\ ▓▓  | ▓▓ ▓▓\▓▓▓▓▓▓   >▓▓  ▓▓|  ▓▓▓▓▓▓\\▓▓▓▓▓▓       
| ▓▓▓▓▓▓▓| ▓▓    ▓▓ ▓▓  | ▓▓ ▓▓ | ▓▓ __ /  ▓▓▓▓\| ▓▓   \▓▓ | ▓▓ __      
| ▓▓     | ▓▓▓▓▓▓▓▓ ▓▓__/ ▓▓ ▓▓ | ▓▓|  \  ▓▓ \▓▓\ ▓▓       | ▓▓|  \     
| ▓▓      \▓▓     \ ▓▓    ▓▓ ▓▓  \▓▓  ▓▓ ▓▓  | ▓▓ ▓▓        \▓▓  ▓▓     
 \▓▓       \▓▓▓▓▓▓▓\▓▓▓▓▓▓▓ \▓▓   \▓▓▓▓ \▓▓   \▓▓\▓▓         \▓▓▓▓      
                                           
                                          I  N  S  T  A  L  L  E  R
"
# Install package updates
sudo apt-get update
sudo apt-get upgrade

# Install necessary packages
sudo apt-get install gunzip gzip curl wget git

# Download install.sh and resize.sh
curl -O https://raw.githubusercontent.com/peditx/easywrt/refs/heads/main/install.sh
curl -O https://raw.githubusercontent.com/peditx/easywrt/refs/heads/main/op/resize.sh
curl -O https://raw.githubusercontent.com/peditx/easywrt/refs/heads/main/op/Custom.sh
curl -O https://raw.githubusercontent.com/peditx/easywrt/refs/heads/main/op/Immortalwrt.sh
curl -O https://raw.githubusercontent.com/peditx/easywrt/refs/heads/main/op/Mikrotik.sh
curl -O https://raw.githubusercontent.com/peditx/easywrt/refs/heads/main/op/Openwrt.sh
curl -O https://raw.githubusercontent.com/peditx/easywrt/refs/heads/main/op/PeDitXrt.sh

# Set execute permissions for install.sh and resize.sh
chmod +x install.sh
chmod +x resize.sh

# Run install.sh
./install.sh
