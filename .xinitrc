#!/usr/bin/env sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Fonts
xset +fp ~/.fonts &
xset fp rehash &

# Background
feh --bg-scale "$HOME/backgrounds/bg.jpg" &

# ssh
eval `ssh-agent`

# Status bar
dwmstat &

# Window manager
startdwm
