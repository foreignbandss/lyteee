#!/bin/bash
CHOICE=$(zenity --list --title="Lytee Settings" --column="Option" "Change Wallpaper" "System Info")
if [ "$CHOICE" == "Change Wallpaper" ]; then
 feh --bg-scale /usr/share/backgrounds/*
elif [ "$CHOICE" == "System Info" ]; then
 neofetch
fi
