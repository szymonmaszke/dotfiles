#!/bin/env bash

HOST=8.8.8.8
warning_color='#f44336'
normal_color='#fabd2f'
no_connection_color='#373737'

rtt=$(ping $HOST -c 1 2>&1 | sed -rn 's/.*time=([0-9]{1,})\.?[0-9]{0,} ms.*/\1/p')

if [[ $rtt == '' ]]; then
  echo "%{F${no_connection_color}}%{F-}"
  exit
fi

if [ "$rtt" -lt 50 ]; then
  echo ""
elif [ "$rtt" -lt 150 ]; then
  echo "%{F${normal_color}}%{F-}"
else
  echo "%{F${warning_color}}%{F-}"
fi
