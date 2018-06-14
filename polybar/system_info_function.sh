#!/usr/bin/env sh

neofetch
printf "\\n"
"$HOME"/.config/polybar/services.sh
printf "\\n\\n"
"$HOME"/.config/polybar/docker_info_function.sh && setterm -cursor off && sleep 7
