#!/usr/bin/env sh

docker_df_data=$(
	docker system df | grep 'TYPE\|Images\|Containers\|Local' | sed \
		-e 's/Local Volumes/Volumes/g' | tr -s ' ' | cut -f 1-4 -d\  | column -t
)

setterm -cursor off
tput bold
tput setaf 4
printf "DOCKER\n"
tput setaf 1
header=$(echo "${docker_df_data}" | head -1)
echo "$header"
tput sgr0
text=$(echo "${docker_df_data}" | tail -3)
echo "$text"
sleep 5
