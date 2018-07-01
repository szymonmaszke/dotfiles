#!/usr/bin/env sh

workspace=$(python3 -c "import json; print(next(filter(lambda w: w['focused'], json.loads('$(i3-msg -t get_workspaces)')))['num'])")
if [ "$workspace" -eq 1 ]; then
	notify-send "Tmux environment saved."
fi
