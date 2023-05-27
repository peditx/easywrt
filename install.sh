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
