#!/bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Fonts
xset +fp ~/.fonts &
xset fp rehash &

# Background
feh --bg-scale "$HOME/backgrounds/bg.jpg" &

# Status bar
dwmstat &

# Window manager
exec dwm 


