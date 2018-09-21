#!/usr/bin/env sh

random_integer=$(((RANDOM % 100000) + 200000))

tdrop -ma -w 320 -h 230 -y 68 -x 1458 -n $random_integer \
	-f "-e '$HOME/.config/polybar/scripts/dropdown/entrypoints/internet_info_function.sh'" termite
