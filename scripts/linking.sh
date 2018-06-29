#!/usr/bin/env sh

link_to_config() {
	rm -rf "$HOME"/.config/"$1"
	ln -sf "$HOME"/dotfiles/"$1" "$HOME"/.config/"$1"
}

mkdir -p "$HOME"/.config/nvim
mkdir -p "$HOME"/.config/tmux
mkdir -p "$HOME"/.config/oh-my-zsh/custom

to_config="dunst i3 neofetch polybar python rofi scripts surfraw termite compton.conf flake8 greenclip.cfg nvim/settings nvim/init.vim tmux/line oh-my-zsh/custom/aliases.zsh"

for config in $to_config; do
	link_to_config "$config"
done

link_to_home() {
	rm -rf "${HOME:?}"/"$1"
	ln -sf "$HOME"/dotfiles/"$1" "$HOME"/"$1"
}

to_home=".xinitrc .zprofile .zshrc .tmux.conf"

for config in $to_home; do
	link_to_home "$config"
done
