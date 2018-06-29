#!/usr/bin/env sh

windows=$(tmux list-windows | wc -l)

if [ "$windows" = 1 ]; then
	if tmux switch-client -n; then
		session_name=$(tmux display-message -p '#S')
		window_name=$(tmux display-message -p '#W')
		tmux kill-window -t "$session_name:$window_name"
	fi
else
	tmux kill-window
fi
