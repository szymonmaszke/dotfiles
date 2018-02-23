#!/bin/bash
# exit session

LOCK="lock"
LOGOUT="logout $USER"
SUSPEND="suspend"
SLEEP="hybrid Sleep"
HIBERNATE="hibernate"
REBOOT="reboot"
SHUTDOWN="shutdown"

CMD=$(echo -e "$LOCK\\n$LOGOUT\\n$SUSPEND\\n$SLEEP\\n$HIBERNATE\\n$REBOOT\\n$SHUTDOWN" | rofi -dmenu -p "session: ")
case $CMD in
$LOCK)
	i3lock-next
	;;
$LOGOUT)
	i3-msg exit
	;;
$SUSPEND)
	systemctl suspend
	;;
$SLEEP)
	systemctl hybrid-sleep
	;;
$HIBERNATE)
	systemctl hibernate
	;;
$REBOOT)
	shutdown now -r
	;;
$SHUTDOWN)
	shutdown now
	;;
esac
