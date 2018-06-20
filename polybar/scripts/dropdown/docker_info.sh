#!/usr/bin/env sh

random_integer=$(((RANDOM % 100000)))

tdrop -ma -w 348 -h 156 -y 68 -x 1281 -n $random_integer \
	-f "-e '$HOME/.config/polybar/scripts/dropdown/entrypoints/docker_info_function.sh'" termite
