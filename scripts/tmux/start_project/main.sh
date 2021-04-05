#!/usr/bin/env sh

PROJECTS_FOLDER="$HOME/projects"

# set up easier to see and longer lasting status line messages

create_tmux_session() {
	local project_name=${1}

	if ! tmux has-session -t "$project_name" 2>/dev/null; then
		tmux new-session -d -s "$project_name" \
			"$HOME"/dotfiles/scripts/tmux/start_project/setup_tmux_layout.sh \
			"$PROJECTS_FOLDER" "$project_name"
	fi
	tmux switch-client -t "$project_name"
	tmux display-message "Attached to project's session."
}

menu() {
	tput bold
	tput setaf 1

	printf "Enter project's name: "
	read -r project_name

	tput sgr0

	mkdir -p "$PROJECTS_FOLDER/$project_name"
	create_tmux_session "$project_name"
}

menu
