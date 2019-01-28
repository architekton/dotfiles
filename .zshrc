[[ $- != *i* ]] && return

autoload -U compinit
compinit

setopt histignoredups no_sharehistory

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

source "$HOME/.zsh/aliases.zsh"
source "$HOME/.zsh/minimal.zsh"
source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
