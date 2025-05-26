#!/bin/bash

choice=$(printf "Sadece Dahili Ekran (eDP1)\nDahili + HDMI 100Hz\nAyna Modu: HDMI = eDP1" | rofi -dmenu -p "Ekran Seçimi")

case "$choice" in
    "Sadece Dahili Ekran (eDP1)")
        ~/.screenlayout/onlylaptop.sh
        ;;
    "Dahili + HDMI 100Hz")
        ~/.screenlayout/screenlayout.sh
        ;;
    "Ayna Modu: HDMI = eDP1")
        ~/.screenlayout/mirror.sh
        ;;
    *)
        exit 1
        ;;
esac
