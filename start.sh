#!/bin/bash
# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color

# Display the banner in magenta
printf "${MAGENTA}
 _______           _______  __   __     __    __            __          
|       \         |       \|  \ |  \   |  \  |  \          |  \         
| ▓▓▓▓▓▓▓\ ______ | ▓▓▓▓▓▓▓\\▓▓_| ▓▓_  | ▓▓  | ▓▓ ______  _| ▓▓_        
| ▓▓__/ ▓▓/      \| ▓▓  | ▓▓  \   ▓▓ \  \▓▓\/  ▓▓/      \|   ▓▓ \       
| ▓▓    ▓▓  ▓▓▓▓▓▓\ ▓▓  | ▓▓ ▓▓\▓▓▓▓▓▓   >▓▓  ▓▓|  ▓▓▓▓▓▓\\▓▓▓▓▓▓       
| ▓▓▓▓▓▓▓| ▓▓    ▓▓ ▓▓  | ▓▓ ▓▓ | ▓▓ __ /  ▓▓▓▓\| ▓▓   \▓▓ | ▓▓ __      
| ▓▓     | ▓▓▓▓▓▓▓▓ ▓▓__/ ▓▓ ▓▓ | ▓▓|  \  ▓▓ \▓▓\ ▓▓       | ▓▓|  \     
| ▓▓      \▓▓     \ ▓▓    ▓▓ ▓▓  \▓▓  ▓▓ ▓▓  | ▓▓ ▓▓        \▓▓  ▓▓     
 \▓▓       \▓▓▓▓▓▓▓\▓▓▓▓▓▓▓ \▓▓   \▓▓▓▓ \▓▓   \▓▓\▓▓         \▓▓▓▓      
                                                   ${NC}\n"

# Welcome message
printf "${GREEN}Welcome to the installer!${NC}\n\n"

# Show warning message if the OS is OpenWRT or ImmortalWRT
printf "${RED}If your operating system is OpenWRT or ImmortalWRT, this section may not function properly and could potentially harm your device. It is advisable to choose option 0 to return to the main menu.${NC}\n\n"

# Prompt user to continue
printf "Press Enter to continue"
read -r

# Install package updates
sudo apt-get update
sudo apt-get upgrade -y

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
