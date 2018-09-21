#!/bin/env bash

###############################################################################
#
#                                 VPN SETTINGS
#
###############################################################################

VPN_SERVERS="/etc/openvpn/ovpn_udp"

# Remember fourteen eyes:
# USA, UK, Canada, New Zeland, Australia, #5 eyes
# Denmark, France, Holland, Norway, #9 eyes
# Germany, Belgium, Italy, Sweden, Spain #14 eyes

COUNTRIES="ua hu sk pl si ee ba ro pt bg at fi md mk lv lu gr ge"

###############################################################################
#
#                               HELPER FUNCTIONS
#
###############################################################################

get_random_server() {
	country=$1
	servers=$(find "$VPN_SERVERS" -name "$country*")
	mapfile -t servers_array <<<"$servers"
	random_server=${servers_array[$RANDOM % ${#servers_array[@]}]}
	echo "$random_server"
}

get_random_country() {
	read -a countries_array <<<"$COUNTRIES"
	random_country=${countries_array[$RANDOM % ${#countries_array[@]}]}
	echo "$random_country"
}

###############################################################################
#
#                                  ROFI MENU
#
###############################################################################

random_country=$(get_random_country)
random_server=$(get_random_server "$random_country")

read -r ip port <<<"$(cat "$random_server" | grep "remote " | cut -d' ' -f2-)"

/home/vyz/.config/scripts/vpn/utilities/setup_firewall.sh "$ip" "$port" &
/home/vyz/.config/scripts/vpn/utilities/start_openvpn.sh "$random_server" &

echo "$ip $random_country"
