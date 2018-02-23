#!/bin/sh

TOKEN=335a1204f88e3dd9f0a9590987c5158b3c62c575

notifications=$(curl -fs https://api.github.com/notifications?access_token=$TOKEN | jq ".[].unread" | grep -c true)
warning_color='#ff5555'

if [ "$notifications" -gt 0 ]; then
	echo "%{F${warning_color}}%{F-} ${notifications}"
else
	echo ""
fi
