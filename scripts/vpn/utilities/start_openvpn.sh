#!/bin/env sh

SECRET=/home/vyz/.config/secrets/vpn

start_vpn() {
	server=$1

	pkill openvpn
	openvpn --config "$server" --auth-user-pass "$SECRET" --script-security 2 \
		--setenv PATH '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' \
		--up /etc/openvpn/scripts/update-systemd-resolved \
		--down /etc/openvpn/scripts/update-systemd-resolved \
		--down-pre \
		--daemon
}

start_vpn "$1"
