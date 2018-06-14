#!/usr/bin/env bash

is_active() {
	tput bold
	if [ "$(systemctl is-active "$1")" = "active" ]; then
		tput setaf 2
		printf "● %s " "$1"
	else
		tput setaf 1
		printf "● %s " "$1"
	fi
}

display_services() {
	count=0
	tput bold
	tput setaf 5
	printf "SERVICES\\n"
	for service in $2; do
		is_active "$service"
		((count++))
		if ! (("$count" % "$1")); then
			printf "\\n"
		fi
	done
	tput sgr0
}

row=3
display_services $row "docker earlyoom mariadb ufw"
