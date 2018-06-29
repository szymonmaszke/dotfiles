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
feh --bg-scale $HOME/wallpapers/geometric_hd.jpg &
exec i3
