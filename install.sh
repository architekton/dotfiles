#!/usr/bin/env sh

BACKUP_DIR="$HOME/dotfiles.bk"

# https://stackoverflow.com/a/4774063
SCRIPTPATH="$(cd "$(dirname "$0")"; pwd -P)"

if [ -d "$BACKUP_DIR" ]; then
	echo "Directory $BACKUP_DIR already exists."
	exit 1
fi

# Move files into backup dir if they exist
bk_if_exists() {
	if [ -L "$1" ]; then
		# Delete existing links with that name
		rm "$1"
	elif [ -d "$1" ] || [ -f "$1" ]; then
		mv "$1" "$BACKUP_DIR/"
	fi
}

mkdir "$BACKUP_DIR"
if [ $? -ne 0 ]; then
	echo "Failed to create $BACKUP_DIR"
	exit 1
fi

# Shell & env related
bk_if_exists "$HOME/.zshrc"
ln -s "$SCRIPTPATH/.zshrc" "$HOME/.zshrc"

bk_if_exists "$HOME/.zshenv"
ln -s "$SCRIPTPATH/.zshenv" "$HOME/.zshenv"

bk_if_exists "$HOME/.zsh"
ln -s "$SCRIPTPATH/.zsh" "$HOME/.zsh"

# UI
bk_if_exists "$HOME/backgrounds"
ln -s "$SCRIPTPATH/backgrounds" "$HOME/backgrounds"

bk_if_exists "$HOME/.Xresources"
ln -s "$SCRIPTPATH/.Xresources" "$HOME/.Xresources"

bk_if_exists "$HOME/.xinitrc"
ln -s "$SCRIPTPATH/.xinitrc" "$HOME/.xinitrc"

source "$HOME/.zshenv"
source "$HOME/.zshrc"

