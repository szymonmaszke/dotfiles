#!/usr/bin/env sh

# Display whether swarm is active and what is the default runtime

docker_info=$(docker info | grep "Swarm\\|Default Runtime")

# Swarm informations (red if inactive, green if active)
swarm=$(echo "${docker_info}" | head -1)
if [[ $swarm =~ 'inactive' ]]; then
	tput setaf 1
else
	tput setaf 2
fi
tput bold
printf "\\n%s" "$swarm"

#Runtime informations (blue if runc, green nvidia's gpu, magenta if other)
runtime=$(echo "${docker_info}" | head -2 | tail -n 1)
if [[ $runtime =~ 'runc' ]]; then
	tput setaf 4
elif [[ $runtime =~ 'nvidia' ]]; then
	tput setaf 2
else
	tput setaf 5
fi

printf "\\n%s" "$runtime"
