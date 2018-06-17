#!/usr/bin/env sh

random_integer=$(((RANDOM % 100000) + 300000))

shift=$(wmctrl -l | tail -1 | cut -d' ' -f3)

x=$((240 + 29 * shift))

tdrop -ma -w 480 -h 368 -y 68 -x "$x" -n $random_integer \
	-f "-e '$HOME/.config/polybar/scripts/dropdown/utils/system_info_function.sh'" termite
