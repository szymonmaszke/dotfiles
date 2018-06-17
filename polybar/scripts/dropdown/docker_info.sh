#!/usr/bin/env sh

random_integer=$(((RANDOM % 100000) + 200000))

shift=$(wmctrl -l | tail -1 | cut -d' ' -f3)

# x=$((217 + 29 * shift))
x=1357

tdrop -ma -w 348 -h 156 -y 68 -x "$x" -n $random_integer \
	-f "-e '$HOME/.config/polybar/scripts/dropdown/utils/docker_info_function.sh'" termite
