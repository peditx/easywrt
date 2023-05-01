 # Download and install MikroTik
    wget https://download.mikrotik.com/routeros/7.8/chr-7.8.img.zip -O chr.img.zip
    gunzip -c chr.img.zip > chr.img
    echo u > /proc/sysrq-trigger
    dd if=chr.img bs=1024 of=/dev/sda
    echo "Installing By PeDitX Script"
    echo "sync disk"
    echo s > /proc/sysrq-trigger
    sleep 5
    echo "Ok, reboot"
    echo b > /proc/sysrq-trigger
