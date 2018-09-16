[[ $- != *i* ]] && return

autoload -U compinit
compinit

source $HOME/.zsh/minimal.zsh

export PATH=$PATH:$HOME/scripts
export CHROOT=$HOME/chroot

setopt histignoredups no_sharehistory

# General
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -la --color=auto'

alias bk="rsync -azv --delete --delete-excluded --exclude=.cache $HOME /mnt/backup"
alias sc="scrot $HOME/scrots/%Y-%m-%d::%H:%M:%S.png -s -e 'xclip -selection clipboard -t image/png < \$f'"

# Git
alias csig='git log --show-signature'
alias dprev='git diff HEAD~ HEAD'
