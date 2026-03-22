#!/bin/bash
EDITION=$1
apt update
apt install -y network-manager sudo grub-pc \
 open-vm-tools open-vm-tools-desktop \
 firmware-linux firmware-linux-nonfree \
 firmware-realtek firmware-iwlwifi \
 usbutils pciutils xserver-xorg-input-all \
 feh mpv ffmpeg rofi
if [ "$EDITION" == "brightlyteee" ]; then
 apt install -y kde-standard firefox calamares zenity htop gparted
elif [ "$EDITION" == "dimmlyteee" ]; then
 apt install -y xfce4 xfce4-goodies firefox-esr htop gparted
elif [ "$EDITION" == "tinylyteee" ]; then
 apt install -y lxde-core openbox pcmanfm
 bash /usr/local/bin/optimize-tiny.sh
fi
systemctl enable NetworkManager
systemctl enable open-vm-tools
