#!/bin/sh

inactive_color='#373737'
active_color='#fabd2f'

if [ "$(systemctl is-active bluetooth.service)" = "active" ]; then
	echo ""
else
	echo "%{F${inactive_color}}%{F-}"
fi
