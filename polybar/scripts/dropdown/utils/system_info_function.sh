#!/usr/bin/env sh

SLEEP_TIME=5

neofetch
printf "\\n"
"$HOME"/.config/polybar/scripts/dropdown/utils/services.sh && setterm -cursor off && sleep "$SLEEP_TIME"
