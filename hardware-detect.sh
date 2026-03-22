#!/bin/bash
echo "Detecting hardware..."
lspci
lsusb
modprobe usbhid
modprobe iwlwifi
modprobe btusb
echo "✅ Hardware Check Done"
