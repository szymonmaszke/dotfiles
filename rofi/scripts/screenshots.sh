#!/bin/env bash

###############################################################################
#
#                                 COMMANDS
#
###############################################################################

WHOLE="Whole"
CHOOSE="Selection"
RECORD="Record"

WHOLE_CLIPBOARD="Clipboard whole"
CHOOSE_CLIPBOARD="Clipboard selection"
CLEAN_SCREENSHOTS="Remove all screenshots"

###############################################################################
#
#                                 VARIABLES
#
###############################################################################

SCREEN_DIRECTORY="$HOME/screens"
RECORDINGS_DIRECTORY="$HOME/recordings"

###############################################################################
#
#                                   CHOICE
#
###############################################################################

CMD=$(
  echo -e "$WHOLE\\n$CHOOSE\\n$RECORD\\n$WHOLE_CLIPBOARD\\n$CHOOSE_CLIPBOARD\\n$CLEAN_SCREENSHOTS" | rofi -dmenu \
    -p "Screenshot mode: "
)
case $CMD in
$WHOLE)
  FILENAME=$(
    rofi -dmenu -p "File name: "
  )
  maim -q --delay 3 --quality 10 --hidecursor "$SCREEN_DIRECTORY/$FILENAME.png"
  notify-send "Image saved as: \\n$SCREEN_DIRECTORY/$FILENAME.png"
  ;;
$CHOOSE)
  FILENAME=$(
    rofi -dmenu -p "File name: "
  )
  maim -q --delay 3 --quality 10 --hidecursor -s "$SCREEN_DIRECTORY/$FILENAME.png"
  notify-send "Image saved as: \\n$SCREEN_DIRECTORY/$FILENAME.png"
  ;;
$RECORD)
  FILENAME=$(
    rofi -dmenu -p "File name: "
  )
  ffmpeg -f x11grab -video_size 1920x1080 -framerate 25 -i "$DISPLAY" -f alsa -ac 1 -i hw:1,0 -c:v libx264 "$RECORDINGS_DIRECTORY/$FILENAME.mp4"
  notify-send "Recording saved to: \\n$RECORDINGS_DIRECTORY/$FILENAME.mp4"
  ;;
$WHOLE_CLIPBOARD)
  maim -q --quality 10 --hidecursor | xclip -selection clipboard -t image/png
  notify-send "Image saved to clipboard"
  ;;
$CHOOSE_CLIPBOARD)
  maim -q --quality 10 --hidecursor -s | xclip -selection clipboard -t image/png
  notify-send "Image saved to clipboard"
  ;;
$CLEAN_SCREENSHOTS)
  rm -rf "${SCREEN_DIRECTORY:?}/*"
  ;;
esac
