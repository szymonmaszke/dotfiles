#!/bin/env bash

OFF=off
RANDOM_SERVER=random

CMD=$(
	echo -e "$RANDOM_SERVER\\n$OFF" | rofi -dmenu -p "vpn: "
)

case $CMD in
$OFF)
	sudo /home/vyz/.config/scripts/vpn/off.sh &
	notify-send "VPN turned off." "\\nOutgoing connections on all ports allowed"
	;;
$RANDOM_SERVER)
	read -r ip country <<<"$(sudo /home/vyz/.config/scripts/vpn/random.sh)"

	notify-send "Successfully connected to VPN." \
		"\\nServer location: $country \\nIP: $ip"
	;;
esac
