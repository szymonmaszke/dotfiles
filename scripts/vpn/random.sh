#!/bin/env bash

###############################################################################
#
#                                 VPN SETTINGS
#
###############################################################################

VPN_SERVERS_PATH="/etc/openvpn/ovpn_udp"
# tcp or udp LOWERCASE ONLY
CONNECTION_TYPE="udp"

# Remember fourteen eyes:
# USA, UK, Canada, New Zeland, Australia, #5 eyes
# Denmark, France, Holland, Norway, #9 eyes
# Germany, Belgium, Italy, Sweden, Spain #14 eyes

# COUNTRIES="ua hu sk pl si ee ba ro pt bg at fi md mk lv lu gr ge"
COUNTRIES="pl"
# Maximum load for a server to be taken into consideration
CAPACITY=30

###############################################################################
#
#                               HELPER FUNCTIONS
#
###############################################################################

get_random_country() {
	read -a countries_array <<<"$COUNTRIES"
	random_country=${countries_array[$RANDOM % ${#countries_array[@]}]}
	echo "$random_country"
}

get_random_fast_server() {
	country=$1
	servers=$(curl --silent https://nordvpn.com/api/server/stats | jq -r --arg location "$country" --arg capacity "$CAPACITY" \
		'[. |
    to_entries[] |
    {key: .key, value: .value.percent} |
    select(.value <= ($capacity|tonumber)) |
    select(.key|contains($location))] |
    sort_by(.value) |
    from_entries |
    to_entries |
    map(.key) | .[]')

	mapfile -t servers_array <<<"$servers"
	# random_fast_server=${servers_array[$RANDOM % ${#servers_array[@]}]}
	random_fast_server=${servers_array[0]}
	random_fast_server="$VPN_SERVERS_PATH/$random_fast_server.$CONNECTION_TYPE.ovpn"
	echo "$random_fast_server"
}

###############################################################################
#
#                             CONNECT TO SERVERS
#
###############################################################################

random_country=$(get_random_country)
random_server=$(get_random_fast_server "$random_country")

read -r ip port <<<"$(cat "$random_server" | grep "remote " | cut -d' ' -f2-)"

/home/vyz/.config/scripts/vpn/utilities/setup_firewall.sh "$ip" "$port" >/dev/null
/home/vyz/.config/scripts/vpn/utilities/start_openvpn.sh "$random_server" >/dev/null

echo "$random_country $ip"
