#!/bin/env sh

# First connect to this server to download data about the fastest servers.
INITIAL_SERVER="/etc/openvpn/ovpn_udp/pl21.nordvpn.com.udp.ovpn"

initial_connection() {
	read -r ip port <<<"$(cat "$INITIAL_SERVER" | grep "remote " | cut -d' ' -f2-)"

	/home/vyz/.config/scripts/vpn/utilities/setup_firewall.sh "$ip" "$port"
	/home/vyz/.config/scripts/vpn/utilities/start_openvpn.sh "$INITIAL_SERVER"
	sleep 5
}
