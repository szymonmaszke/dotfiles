#!/bin/env bash
CHOOSE_REGION="Screenshot of region"
WHOLE_SCREEN="Screen of whole window"
CURRENT_WINDOW="Screenshot of current window"

SCREEN_DIRECTORY="$HOME/screens"

CMD=$(
	echo -e "$WHOLE_SCREEN\\n$CHOOSE_REGION\\n$CURRENT_WINDOW" | rofi -dmenu \
		-p "screens: "
)
case $CMD in
$CHOOSE_REGION)
	exec scrot "$SCREEN_DIRECTORY/%b%d::%H%M%S.png" -q 100 -s
	;;
$WHOLE_SCREEN)
	exec scrot "$SCREEN_DIRECTORY/%b%d::%H%M%S.png" -q 100
	;;
$CURRENT_WINDOW)
	exec scrot "$SCREEN_DIRECTORY/%b%d::%H%M%S.png" -q 100
	;;
esac
