#!/bin/bash
clear
echo "Welcome to Lytee OS!"
bash /usr/local/bin/hardware-detect.sh
echo "1) Auto Detect"
echo "2) Manual Select"
read m
if [ "$m" == "1" ]; then
 bash /usr/local/bin/auto-detect.sh
else
 bash /usr/local/bin/manual-select.sh
fi
calamares
systemctl disable lytee-firstboot.service
