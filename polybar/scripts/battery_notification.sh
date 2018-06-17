#!/usr/bin/env bash

battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')

if [ "$battery_level" -le 20 ]; then
	notify-send "Battery low switch to AC power" "Battery level is ${battery_level}%!"
fi
