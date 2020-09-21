#!/bin/sh

no_vpn_color='#373737'

if [ "$(pgrep openvpn)" ]; then
  echo ""
else
  echo "%{F${no_vpn_color}}%{F-}"
fi
