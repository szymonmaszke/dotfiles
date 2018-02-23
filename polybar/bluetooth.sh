#!/bin/sh

inactive_color='#424242'
active_color='#d7d7d7'

if [ "$(systemctl is-active bluetooth.service)" = "active" ]; then
	echo "%{F${active_color}}%{F-}"
else
	echo "%{F${inactive_color}}%{F-}"
fi
