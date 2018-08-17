#!/usr/bin/env sh

public_ip=$(curl -s ipinfo.io/ip)

tput bold
tput setaf 4
printf "Public IP: "
tput sgr0
printf "%s\\n" "$public_ip"

local_ip=$(ifconfig | rg 255.255.255 | awk '{ print $2 }')

tput bold
tput setaf 4
printf "Local IP: "
tput sgr0
printf "%s\\n" "$local_ip"
