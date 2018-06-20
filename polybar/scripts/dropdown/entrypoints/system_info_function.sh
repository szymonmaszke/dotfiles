#!/usr/bin/env sh

SLEEP_TIME=5

neofetch
printf "\\n"
"$HOME"/.config/polybar/scripts/dropdown/entrypoints/utils/system_info/services.sh && setterm -cursor off && sleep "$SLEEP_TIME"
