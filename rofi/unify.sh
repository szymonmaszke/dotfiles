#!/bin/env bash
SCREENSHOTS='screenshots'
CLIPBOARD='clipboard'
RUN_APP='run'
WEB='web'
NETWORK='network'
MONITORS='monitors'
SESSION='session'
BLUETOOTH='bluetooth'
BOOKS='books'

CMD=$(
	echo -e \
		"$BOOKS\\n$SESSION\\n$NETWORK\\n$CLIPBOARD\\n$RUN_APP\\n$WEB\\n$BLUETOOTH\\n$MONITORS\\n$SCREENSHOTS" | rofi -dmenu \
		-p "options: "
)
case $CMD in
$CLIPBOARD)
	exec rofi -show clipboard
	;;
$RUN_APP)
	exec rofi -show drun
	;;
$WEB)
	exec "$HOME/.config/rofi/webbrowser.sh"
	;;
$NETWORK)
	exec "$HOME/.config/rofi/networkmanager-dmenu/networkmanager_dmenu"
	;;
$SESSION)
	exec "$HOME/.config/rofi/session.sh"
	;;
$BLUETOOTH)
	exec "$HOME/.config/rofi/bluetooth.sh"
	;;
$BOOKS)
	exec "$HOME/.config/rofi/books.sh"
	;;
$SCREENSHOTS)
	exec "$HOME/.config/rofi/screenshots.sh"
	;;
$MONITORS)
	exec "$HOME/.config/rofi/xrandr.sh"
	;;
esac
