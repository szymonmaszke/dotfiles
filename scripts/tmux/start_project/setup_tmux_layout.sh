#!/usr/bin/env sh

WINDOWS="code run test deploy previous_projects"

setup_tmux_layout() {
	local projects_folder=${1}
	local project_name=${2}

	if cd "$projects_folder/$project_name"; then
		for window_name in $WINDOWS; do
			tmux new-window -c "$projects_folder/$project_name" -n "$window_name" -d
		done
		set -- $WINDOWS
		tmux select-window -t "$1"
	else
		tmux display-message "Fatal Error, directory deleted by external process."
		exit 1
	fi

}

setup_tmux_layout "$1" "$2"
