#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Cyan Magenta Yellow and Default arrow
PS1='[\W]\[\e[36m\]-\[\e[35m\]-\[\e[33m\]-\[\e[39m\]> '

#General
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -la --color=auto'

alias rbash='source ~/.bashrc'

