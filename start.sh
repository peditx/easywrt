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
curl -O https://raw.githubusercontent.com/peditx/easywrt/36d3bf205b46c1d7b17bfbc7c2973b7a54887c39/install.sh
curl -O https://raw.githubusercontent.com/peditx/easywrt/36d3bf205b46c1d7b17bfbc7c2973b7a54887c39/op/resize.sh
curl -O https://github.com/peditx/easywrt/blob/5959810386d472eabeeba495f1798fdab658363d/op/Custom.sh
curl -O https://github.com/peditx/easywrt/blob/5959810386d472eabeeba495f1798fdab658363d/op/Immortalwrt.sh
curl -O https://github.com/peditx/easywrt/blob/5959810386d472eabeeba495f1798fdab658363d/op/Mikrotik.sh
curl -O https://github.com/peditx/easywrt/blob/5959810386d472eabeeba495f1798fdab658363d/op/Openwrt.sh
curl -O https://github.com/peditx/easywrt/blob/5959810386d472eabeeba495f1798fdab658363d/op/PeDitXrt.sh

# Set execute permissions for install.sh and resize.sh
chmod +x install.sh
chmod +x resize.sh

# Run install.sh
./install.sh
