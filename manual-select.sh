#!/bin/bash
echo "Select Edition:"
echo "1) BrightLyteee"
echo "2) DimmLyteee"
echo "3) TinyLyteee"
read c
case $c in
1) EDITION="brightlyteee";;
2) EDITION="dimmlyteee";;
3) EDITION="tinylyteee";;
esac
bash /usr/local/bin/install.sh $EDITION
