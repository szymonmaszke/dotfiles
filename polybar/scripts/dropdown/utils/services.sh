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
	printf "SERVICES"
	for service in $2; do
		if ! (("$count" % "$1")); then
			printf "\\n"
		fi
		is_active "$service"
		((count++))
	done
	tput sgr0
}

row=4
display_services $row "docker earlyoom mariadb ufw"
