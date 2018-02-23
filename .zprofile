PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export GEM_HOME=$HOME/.gem

if [ -z "$DISPLAY" ] && [ -n "XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	ssh-agent startx >/dev/null 2>&1
fi
