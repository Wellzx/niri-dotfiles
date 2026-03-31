#!/usr/bin/env bash

if pgrep -x "waybar" > /dev/null; then
    echo "Fechando waybar de forma limpa..."
    killall -q waybar
    
    sleep 0.2
else
    echo "Abrindo waybar..."
    waybar > /dev/null 2>&1 &
fi