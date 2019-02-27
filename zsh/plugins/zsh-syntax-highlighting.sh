#!/usr/bin/env sh

typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets line)

ZSH_HIGHLIGHT_STYLES[path]='fg=4,bold'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=4,bold'

ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=1,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=1,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=1,bold'

ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=22,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=22,bold'

ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=94'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=94'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=94'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=94'

ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=27,bold'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=27,bold'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=27,bold'

ZSH_HIGHLIGHT_STYLES[assign]='fg=160,bold'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=160,bold'

#brackets
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=27,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=202,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=28,bold'

ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=160,bold'
