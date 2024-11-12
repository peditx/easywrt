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

clear

# Display the banner in magenta
echo -e "${MAGENTA}
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
                                                   ${NC}\n"

# Welcome message
printf "${GREEN}Welcome to the installer!${NC}\n\n"
sleep 3

read -p "Press Enter to continue"
# Welcome message
echo "Welcome to PeDitXrt installation app"
echo ""
echo "Please select your OS you need to install:"
echo "1- PeDitXrt"
echo "2- MikroTik"
echo "3- OpenWRT"
echo "4- ImmortalWRT"
echo "5- Custom Link"
echo ""

# Loop until a valid choice is made
while true; do
    read -p "Enter your choice (1-5): " choice

    case $choice in
      1)
        echo "Downloading PeDitXrt installer..."
        chmod +x PeDitXrt.sh
        ./PeDitXrt.sh
        break;;
      2)
        echo "Downloading MikroTik installer..."
        chmod +x Mikrotik.sh
        ./Mikrotik.sh
        break;;
      3)
        echo "Downloading OpenWRT installer..."
        chmod +x Openwrt.sh
        ./Openwrt.sh
        break;;
      4)
        echo "Downloading ImmortalWRT installer..."
        chmod +x Immortalwrt.sh
        ./Immortalwrt.sh
        break;;
      5)
        echo "Downloading Custom installer..."
        chmod +x Custom.sh
        ./Custom.sh
        break;;
      *)
        echo "Invalid choice. Please enter a number between 1 and 5.";;
    esac
done

exit 0
