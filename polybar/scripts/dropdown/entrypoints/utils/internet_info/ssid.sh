#!/usr/bin/env sh

tput bold
tput setaf 4
ssid=$(iwgetid -r)
printf "SSID: "
tput sgr0
printf "%s\\n" "$ssid"
