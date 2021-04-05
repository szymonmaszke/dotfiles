#!/usr/bin/env sh

PRIVATE_REPOSITORY=true
KEY=$(head -n 1 "$HOME"/.config/secrets/setup_project_github_token)

create_github_repository() {
	local project_name=${1}
	local description=${2}
	local gitignore=${3}

	local authorization="'Authorization: token $KEY'"
	local data="'{\"name\": \"$project_name\", \"private\": $PRIVATE_REPOSITORY,
	\"description\": \"$description\", \"gitignore_template\": \"$gitignore\"}'"
	local options="-s -o /dev/null -w \"%{http_code}\""
	local RESTpoint="https://api.github.com/user/repos"

	echo "$authorization"
	curl -H "$authorization" -d "$data" "$RESTpoint"
	# status=$(
	# 	curl -H "'Authorization: token $KEY'" -d \
	# 		"'{\"name\": $project_name, \"private\": $PRIVATE_REPOSITORY,
	# \"description\": $description', \"gitignore_template\": $gitignore}" \
	# 		-s -o /dev/null \
	# 		-w "%{http_code}" \
	# 		https://api.github.com/user/repos
	# )
	echo "$status"

	tput bold
	if [ "$status" = '422' ]; then
		tput setaf 1
		echo "You already have GitHub repository named like your new project!"
		exit 1
	elif [ "$status" = 201 ]; then
		tput setaf 2
		echo "GitHub repository created successfully!"
	fi
	tput sgr0

}

main() {
	local project_name=${1}

	tput bold
	tput setaf 2

	printf "Enter project's description (leave empty for no description): "
	read -r project_description

	tput setaf 3

	printf "Specify project's .gitignore template: "
	read -r project_gitignore

	create_github_repository "$project_name" "$project_description" "$project_gitignore"

	tput sgr0
}

main "$1"
