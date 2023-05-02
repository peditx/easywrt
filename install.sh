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

read -p "Enter your choice (1-5): " choice

case $choice in
  1)
    echo "Downloading PeDitXrt installer..."
    wget https://github.com/peditx/easywrt/releases/download/101/PeDitXrt.sh
    chmod +x PeDitXrt.sh
    ./PeDitXrt.sh
    ;;
  2)
    echo "Downloading MikroTik installer..."
    wget https://github.com/peditx/easywrt/releases/download/101/Mikrotik.sh
    chmod +x Mikrotik.sh
    ./Mikrotik.sh
    ;;
  3)
    echo "Downloading OpenWRT installer..."
    wget https://github.com/peditx/easywrt/releases/download/101/Openwrt.sh
    chmod +x Openwrt.sh
    ./Openwrt.sh
    ;;
  4)
    echo "Downloading ImmortalWRT installer..."
    wget https://github.com/peditx/easywrt/releases/download/101/Immortalwrt.sh
    chmod +x Immortalwrt.sh
    ./Immortalwrt.sh
    ;;
  5)
    echo "Downloading Custom installer..."
    wget https://github.com/peditx/easywrt/releases/download/101/Custom.sh
    chmod +x Custom.sh
    ./Custom.sh
    ;;
  *)
    echo "Invalid choice. Please enter a number between 1 and 5."
    ;;
esac

exit 0
