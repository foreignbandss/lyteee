#!/bin/bash
RAM=$(free -m | awk '/Mem:/ {print $2}')
CPU=$(nproc)
if [ $RAM -lt 1500 ] || [ $CPU -eq 1 ]; then
 EDITION="tinylyteee"
elif [ $RAM -lt 5000 ]; then
 EDITION="dimmlyteee"
else
 EDITION="brightlyteee"
fi
bash /usr/local/bin/install.sh $EDITION
