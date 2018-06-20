#!/usr/bin/env sh

# PING
HOST='8.8.8.8'
rtt=$(ping $HOST -c 1 2>&1 | sed -rn 's/.*time=([0-9]{1,})\.?[0-9]{0,} ms.*/\1/p')

tput bold
if [[ $rtt == '' ]]; then
	tput setaf 1
	echo "No connection!"
else
	if [ "$rtt" -lt 50 ]; then
		tput setaf 2
	elif [ "$rtt" -lt 150 ]; then
		tput setaf 3
	else
		tput setaf 1
	fi
	echo "Ping: $rtt"
fi
tput sgr0
