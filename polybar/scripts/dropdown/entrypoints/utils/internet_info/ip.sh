#!/usr/bin/env sh

public_ip=$(curl -s ipinfo.io/ip)

tput bold
tput setaf 4
printf "Public IP: "
tput sgr0
printf "%s\\n" "$public_ip"
