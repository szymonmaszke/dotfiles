#!/bin/env sh

VPN_INTERFACE=tun0
PROTOCOL=udp

setup_ufw() {
	ip=$1
	port=$2

	ufw default deny outgoing
	ufw --force reset
	ufw allow out on "$VPN_INTERFACE" from any to any
	ufw allow out to "$ip" port "$port" proto "$PROTOCOL"
	ufw enable
}

setup_ufw "$1" "$2"
