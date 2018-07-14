#!/bin/sh

#TODO

BACKUP_DIR="$HOME/dotfiles.bk"

# https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself#4774063
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
bk_if_exists "$HOME/.bashrc"
ln -s "$SCRIPTPATH/.bashrc" "$HOME/.bashrc"

bk_if_exists "$HOME/.bash_profile"
ln -s "$SCRIPTPATH/.bash_profile" "$HOME/.bash_profile"

bk_if_exists "$HOME/.profile"
ln -s "$SCRIPTPATH/.profile" "$HOME/.profile"

# Vim 
bk_if_exists "$HOME/.vim"
ln -s "$SCRIPTPATH/.vim" "$HOME/.vim"

bk_if_exists "$HOME/.vimrc"
ln -s "$SCRIPTPATH/.vim/.vimrc" "$HOME/.vimrc"

# UI
bk_if_exists "$HOME/backgrounds"
ln -s "$SCRIPTPATH/backgrounds" "$HOME/backgrounds"

bk_if_exists "$HOME/.fehbg"
ln -s "$SCRIPTPATH/.fehbg" "$HOME/.fehbg"

bk_if_exists "$HOME/.Xresources"
ln -s "$SCRIPTPATH/.Xresources" "$HOME/.Xresources"

bk_if_exists "$HOME/.xinitrc"
ln -s "$SCRIPTPATH/.xinitrc" "$HOME/.xinitrc"

# Compile ycm
# python3 "$SCRIPTPATH/.vim/bundle/YouCompleteMe/install.py" --clang-completer

chmod +x "$HOME/.fehbg"
"$HOME/.fehbg"

source "$HOME/.profile"
source "$HOME/.bash_profile"
source "$HOME/.bashrc"
