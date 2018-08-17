#!/usr/bin/env sh

SLEEP_TIME=7

$HOME/.config/polybar/scripts/dropdown/entrypoints/utils/docker_info/images_containers_volumes.sh
$HOME/.config/polybar/scripts/dropdown/entrypoints/utils/docker_info/swarm_runtime.sh && setterm -cursor off && sleep "$SLEEP_TIME"
