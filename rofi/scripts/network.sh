#!/bin/env bash

trim_bars() {
	echo "${@:1:$#-1}"
}

available_networks=$(nmcli --colors no --fields SSID,BARS device wifi list)

network_choice=$(echo "$available_networks" | tail -n +2 | rofi -dmenu -p "network: ")
BSSID="$(trim_bars $network_choice)"
password=$(rofi -dmenu -p "password: ")
nmcli device wifi connect "$BSSID" password "$password"
