occupied_space=$(df -h / | grep / | awk '{print $5}' | cut -f 1 -d%)

fantastic_color='#27cc18'
warning_color='#fabd2f'
critical_color='#f44336'

if [ "$occupied_space" -le 30 ]; then
  echo "%{F${fantastic_color}}%{F-}"
elif [ "$occupied_space" -le 60 ]; then
  echo ""
elif [ "$occupied_space" -le 80 ]; then
  echo "%{F${warning_color}}%{F-}"
else
  echo "%{F${critical_color}}%{F-}"
fi
