xrandr --setprovideroutputsource modese
tting NVIDIA-0
xrandr --auto
xsetroot -cursor_name left_ptr
setxkbmap 'pl,pl'
setxkbmap -option caps:swapescape
systemctl --user import-environment DISPLAY

protonmail-desktop &
inboxer &
caprine &
termite -e tmux &
redshift &
greenclip daemon &
udiskie &
signal-desktop &
feh --bg-scale $HOME/wallpapers/geometric_hd.jpg &
xidlehook --time 5 --timer 'i3lock-next' --not-when-fullscreen --not-when-audio &
exec i3
