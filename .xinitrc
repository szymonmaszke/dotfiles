xrandr --setprovideroutputsource modese
tting NVIDIA-0
xrandr --auto
xsetroot -cursor_name left_ptr
setxkbmap 'pl,pl'
setxkbmap -option caps:swapescape
systemctl --user import-environment DISPLAY

protonmail-desktop &
caprine &
termite -e tmux &
redshift &
greenclip daemon &
udiskie &
signal-desktop &
termite -t scratchpad-code -e "nvim $HOME/.scratchpad/scratch.py" &
feh --bg-scale $HOME/wallpapers/geometric_hd.jpg &
xidlehook --timer 'normal' 300 'i3lock-next' '' --not-when-fullscreen --not-when-audio &
exec i3
