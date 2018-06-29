#!/usr/bin/env sh

REMOVE_WHITESPACE=true
REMOVE_PROMPT=" legion .* %"
# 0 for current pane content, negative numbers go into history, - for all history
WHERE_TO_START="0"
EDITING_SOFT="nvim"

if $REMOVE_WHITESPACE; then
	tmux capture-pane -pCJ -S "$WHERE_TO_START" | cat -s | sed "s/$REMOVE_PROMPT//" | $EDITING_SOFT - "+normal G"
else
	tmux capture-pane -pCJ -S "$WHERE_TO_START" | $EDITING_SOFT - "+normal G"
fi
