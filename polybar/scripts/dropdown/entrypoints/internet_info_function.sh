#!/usr/bin/env sh

SLEEP_TIME=7

"$HOME"/.config/polybar/scripts/dropdown/entrypoints/utils/internet_info/ssid.sh
"$HOME"/.config/polybar/scripts/dropdown/entrypoints/utils/internet_info/ip.sh
printf "\\n"
"$HOME"/.config/polybar/scripts/dropdown/entrypoints/utils/internet_info/ping.sh
printf "\\n"
"$HOME"/.config/polybar/scripts/dropdown/entrypoints/utils/internet_info/interfaces.sh && setterm -cursor off && sleep "$SLEEP_TIME"
