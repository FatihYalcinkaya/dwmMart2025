#!/bin/bash

# Sadece dahili ekranı (örneğin eDP1) etkinleştir
xrandr --output eDP1 --primary --mode 1920x1080 --auto

# Diğer tüm bağlı ekranları kapat
for output in $(xrandr | grep " connected" | awk '{ print $1 }'); do
    if [ "$output" != "eDP1" ]; then
        xrandr --output "$output" --off
    fi
done
