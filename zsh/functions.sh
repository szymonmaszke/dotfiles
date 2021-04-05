#!/usr/bin/env sh

# run ls when changing directory automatically
list_all() {
  emulate -L zsh
  ls_extended -s
}

# chpwd_functions=(${chpwd_functions[@]} "list_all")

# List all available command
lac() {
  echo -n $PATH | xargs -d : -I {} find {} -maxdepth 1 \
    -executable -type f -printf '%P\n' | sort -u
}
