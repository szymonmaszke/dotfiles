xrandr --auto
xsetroot -cursor_name left_ptr
setxkbmap 'pl,pl'
setxkbmap -option caps:swapescape
systemctl --user import-environment DISPLAY

chromium --app=https://github.com &
chromium --app=https://stackoverflow.com &
chromium --app=https://new.reddit.com &
chromium --app=https://mail.google.com &
chromium --app=https://google.com &
chromium --app=https://music.youtube.com &
chromium --app=https://youtube.com &
chromium --app=https://mail.protonmail.com/login &
chromium --app=https://facebook.com &

termite -e tmux &
caprine &
signal-desktop &
redshift &
greenclip daemon &
udiskie &
qtwebflix &
termite -t scratchpad-code -e "nvim $HOME/.scratchpad/scratch.py" &
feh --bg-scale $HOME/wallpapers/geometric_hd.jpg &
xidlehook --timer 'normal' 300 'i3lock-next' '' --not-when-fullscreen --not-when-audio &
exec i3
