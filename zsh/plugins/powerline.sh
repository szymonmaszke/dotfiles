#!/usr/bin/env sh

function powerline_precmd() {
  PS1="$(powerline-go -modules "docker,venv,host,ssh,cwd,perms,git,hg,jobs,exit,root" -shorten-gke-names -mode flat -error $? -shell zsh)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
  install_powerline_precmd
fi
