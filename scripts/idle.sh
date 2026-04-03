#!/bin/bash

LOCK_CMD="swaylock -f"
SUSPEND_CMD="pidof steam || systemctl suspend"

# Kill old instances
pkill -x swayidle

# --- RUN SWAYIDLE ---
swayidle -w \
    timeout 180 "$LOCK_CMD" \
    timeout 210 "niri msg action power-off-monitors" \
    resume "niri msg action power-on-monitors && brightnessctl -r" \
    timeout 540 "$SUSPEND_CMD" \
    before-sleep "$LOCK_CMD" &

exit 0