#!/bin/bash

book_dir="$HOME/books"
chosen_book="$(find "$book_dir"/* -printf "%f\\n" |
	rofi -dmenu -p 'book: ')"

if [ ! -z "$chosen_book" ]; then
	zathura "$book_dir/$chosen_book"
fi
