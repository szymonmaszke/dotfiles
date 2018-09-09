#!/bin/env bash
SCREENSHOTS='screenshots'
WEB='web'
MONITORS='monitors'
SESSION='session'
BLUETOOTH='bluetooth'
BOOKS='books'

CMD=$(
	echo -e \
		"$SESSION\\n$WEB\\n$BLUETOOTH\\n$MONITORS\\n$SCREENSHOTS" | rofi -dmenu \
		-p "options: "
)
case $CMD in
$WEB)
	exec "$HOME/.config/rofi/scripts/webbrowser.sh"
	;;
$SESSION)
	exec "$HOME/.config/rofi/scripts/session.sh"
	;;
$BLUETOOTH)
	exec "$HOME/.config/rofi/scripts/bluetooth.sh"
	;;
$BOOKS)
	exec "$HOME/.config/rofi/scripts/books.sh"
	;;
$SCREENSHOTS)
	exec "$HOME/.config/rofi/scripts/screenshots.sh"
	;;
$MONITORS)
	exec "$HOME/.config/rofi/scripts/xrandr.sh"
	;;
esac
