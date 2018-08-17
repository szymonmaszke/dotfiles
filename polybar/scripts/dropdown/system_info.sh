#!/usr/bin/env sh

random_integer=$(((RANDOM % 100000) + 300000))

tdrop -ma -w 480 -h 358 -y 68 -x 1371 -n $random_integer \
	-f "-e '$HOME/.config/polybar/scripts/dropdown/entrypoints/system_info_function.sh'" termite
