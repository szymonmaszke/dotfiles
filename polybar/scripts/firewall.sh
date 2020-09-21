#!/bin/sh

inactive_color='#373737'

if [ "$(systemctl is-active ufw)" = "active" ]; then
  echo ""
else
  echo "%{F${inactive_color}}%{F-}"
fi
