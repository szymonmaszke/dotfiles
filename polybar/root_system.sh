occupied_space=$(df / | grep / | cut -f 8,8 -d\  | cut -f 1 -d%)

fantastic_color='#27cc18'
warning_color='#fabd2f'
critical_color='#f44336'

if [ "$occupied_space" -le 30 ]; then
	echo "%{F${fantastic_color}}%{F-}"
elif [ "$occupied_space" -le 50 ]; then
	echo ""
elif [ "$occupied_space" -le 70 ]; then
	echo "%{F${warning_color}}%{F-}"
elif [ "$occupied_space" -le 90 ]; then
	echo "%{F${critical_color}}%{F-}"
elif [ "$occupied_space" -le 100 ]; then
	echo "%{F${critical_color}}%{F-}"
fi
