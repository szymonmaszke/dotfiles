#!/usr/bin/env bash

warning_color='#f44336'
# Arch updates includes ruby gem updates as well (little did you know, huh?)
arch_updates=$(checkupdates | wc -l)
aur_updates=$(pikaur --aur -Qu 2>/dev/null | wc -l)

updates=$((arch_updates + aur_updates))

if [ "$updates" -eq 0 ]; then
	echo ""
else
	echo "%{F${warning_color}}%{F-} ${updates}"
fi
