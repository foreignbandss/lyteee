#!/bin/bash
clear
echo "🌟 Lytee OS Launcher 🌟"
echo "1) Auto Detect"
echo "2) Manual Select"
read mode
if [ "$mode" == "1" ]; then
 bash /usr/local/bin/auto-detect.sh
else
 bash /usr/local/bin/manual-select.sh
fi
