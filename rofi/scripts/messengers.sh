#!/bin/env bash

FACEBOOK_MESSENGER='facebook'
SLACK='slack'
GMAIL='gmail'
PROTONMAIL='protonmail'

CMD=$(
	echo -e \
		"$FACEBOOK_MESSENGER\\n$SLACK\\n$GMAIL\\n$PROTONMAIL" | rofi -dmenu \
		-p "messengers: "
)
case $CMD in
$FACEBOOK_MESSENGER)
	exec i3-msg -t command "[con_mark=\"messenger-client\"] scratchpad show"
	;;
$SLACK)
	exec i3-msg -t command "[con_mark=\"slack-client\"] scratchpad show"
	;;
$GMAIL)
	exec i3-msg -t command "[con_mark=\"inbox-client\"] scratchpad show"
	;;
$PROTONMAIL)
	exec i3-msg -t command "[con_mark=\"protonmail-client\"] scratchpad show"
	;;
esac
