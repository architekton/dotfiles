#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Disable .bash_history
unset HISTFILE

# Cyan Magenta Yellow and Default arrow
PS1='[\W]\[\e[36m\]-\[\e[35m\]-\[\e[33m\]-\[\e[39m\]> '

# General
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -la --color=auto'

alias bk="rsync -azv --delete $HOME /mnt/backup"

alias sc="scrot $HOME/scrots/%Y-%m-%d::%H:%M:%S.png -s -e 'xclip -selection clipboard -t image/png < \$f'"

