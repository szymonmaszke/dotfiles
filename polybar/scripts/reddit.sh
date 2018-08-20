#!/bin/sh

warning_color='#f44336'
url=$(head -n 1 "$HOME"/.config/secrets/polybar_reddit_token 2>/dev/null)
unread=$(curl -sf "$url" | jq '.["data"]["children"] | length' 2>/dev/null)

case "$unread" in
'' | *[!0-9]*)
	unread=0
	;;
esac

if [ "$unread" -gt 0 ]; then
	echo "%{F${warning_color}}%{F-}"
else
	echo ""
fi
