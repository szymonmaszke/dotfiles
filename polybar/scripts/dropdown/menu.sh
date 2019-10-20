#!/usr/bin/env sh

rofi_menu() {
  echo -n -e "$1" | rofi -dmenu -location "$2" -yoffset "$3" -xoffset "$4" -width "$5" -lines "$6" -p "$7"
}

rofi_menu "$@"
