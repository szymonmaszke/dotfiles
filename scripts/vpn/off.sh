#!/bin/env sh

pkill openvpn
ufw --force reset
ufw default allow outgoing
ufw enable
