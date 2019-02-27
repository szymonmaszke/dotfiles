#!/usr/bin/env sh

# Minimum elapsed time
bgnotify_threshold=4

# Text to be displayed
function bgnotify_formatted() {
  ## $1=exit_status, $2=command, $3=elapsed_time
  bgnotify "Command '$2' finished." "Status code: $1\nElapsed time: $3s"
}
