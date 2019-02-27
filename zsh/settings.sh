#!/usr/bin/env sh

# Initial settings of zsh like autocompletion type
# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 2
zstyle :compinstall filename '/home/vyz/.zshrc'
fpath+=~/.zfunc

autoload -Uz compinit
compinit
# End of lines added by compinstall
