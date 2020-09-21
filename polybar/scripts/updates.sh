#!/usr/bin/env bash

warning_color='#f44336'
normal_color='#fabd2f'
no_connection_color='#373737'
# Arch updates includes ruby gem updates as well (little did you know, huh?)
arch_updates=$(checkupdates 2>&1)

if [[ $arch_updates =~ '==>' ]]; then
  echo "%{F${no_connection_color}}%{F-}"
  exit
fi

aur_updates=$(pikaur --aur -Qu 2>/dev/null | wc -l)
arch_updates=$(echo "$arch_updates" | wc -l)

updates=$((arch_updates + aur_updates))

if [ "$updates" -lt 40 ]; then
  echo " 累"
elif [ "$updates" -lt 80 ]; then
  echo "%{F${normal_color}} 累%{F-}"
else
  echo "%{F${warning_color}} 累%{F-}"
fi
