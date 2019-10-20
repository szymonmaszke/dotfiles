#!/usr/bin/env sh

warning_color='#f44336'
normal_color='#fabd2f'

final_string=""

images=$(($(docker images | wc -l) - 1))

if [ "$images" -lt 10 ]; then
  final_string=""
elif [ "$images" -lt 20 ]; then
  final_string="%{F${normal_color}}%{F-}"
else
  final_string="%{F${warning_color}}%{F-}"
fi

containers=$(($(docker ps -a | wc -l) - 1))

if [ "$containers" -lt 20 ]; then
  final_string="$final_string  "
elif [ "$containers" -lt 40 ]; then
  final_string="$final_string %{F${normal_color}}%{F-} ${containers}"
else
  final_string="$final_string %{F${warning_color}}%{F-} ${containers}"
fi

volumes=$(($(docker volume ls | wc -l) - 1))

if [ "$volumes" -lt 5 ]; then
  final_string="$final_string "
elif [ "$volumes" -lt 10 ]; then
  final_string="$final_string %{F${normal_color}}%{F-} ${volumes}"
else
  final_string="$final_string %{F${warning_color}}%{F-} ${volumes}"
fi

echo "$final_string"
