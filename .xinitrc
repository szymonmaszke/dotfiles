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
slack &
termite -e tmux &
redshift &
greenclip daemon &
udiskie &
signal-desktop &
feh --bg-scale $HOME/wallpapers/geometric_hd.jpg &
pgrep xautolock > /dev/null 2>&1 || xautolock -locker 'i3lock-next' &
exec i3
