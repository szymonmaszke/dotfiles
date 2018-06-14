#!/usr/bin/env sh

warning_color='#f44336'

final_string=""

images=$(($(docker images | wc -l) - 1))

if [ "$images" -eq 0 ]; then
	final_string=""
else
	final_string="%{F${warning_color}}%{F-} ${images}"
fi

containers=$(($(docker ps -a | wc -l) - 1))

if [ "$containers" -eq 0 ]; then
	final_string="$final_string  "
else
	final_string="$final_string %{F${warning_color}}%{F-} ${containers}"
fi

volumes=$(($(docker volume ls | wc -l) - 1))

if [ "$volumes" -eq 0 ]; then
	final_string="$final_string "
else
	final_string="$final_string %{F${warning_color}}%{F-} ${volumes}"
fi

echo "$final_string"
