#!/usr/bin/env bash

arch_updates=$(checkupdates | wc -l)
warning_color='#ff5555'

if [ "$arch_updates" -eq 0 ]; then
	echo ""
else
	echo "%{F${warning_color}}%{F-} ${arch_updates}"
fi
