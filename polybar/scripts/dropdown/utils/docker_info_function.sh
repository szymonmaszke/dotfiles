#!/usr/bin/env sh

containers_images_volumes=$(
	docker system df | grep 'TYPE\|Images\|Containers\|Local' | sed \
		-e 's/Local Volumes/Volumes/g' | tr -s ' ' | cut -f 1-4 -d\  | column -t
)

setterm -cursor off
tput bold

# Display informations about containers, images and volumes

tput setaf 1
header=$(echo "${containers_images_volumes}" | head -1)
echo "$header"
tput sgr0
text=$(echo "${containers_images_volumes}" | tail -3)
echo "$text"

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

sleep 5
