#!/bin/env sh

pkill openvpn
ufw --force reset
ufw default deny outgoing
ufw enable
