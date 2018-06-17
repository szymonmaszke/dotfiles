#!/bin/env bash

TOKEN=$(head -n 1 "$HOME"/.config/polybar_secrets/github_token)

warning_color='#f44336'

notifications=$(curl -fs https://api.github.com/notifications?access_token="$TOKEN" | jq ".[].unread" | grep -c true)

if [ "$notifications" -gt 0 ]; then
	echo "%{F${warning_color}}%{F-}"
else
	echo ""
fi
