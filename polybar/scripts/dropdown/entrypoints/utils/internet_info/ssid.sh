#!/usr/bin/env sh

tput bold
ssid=$(iwgetid -r)
echo "SSID: $ssid"
tput sgr0
