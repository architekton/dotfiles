alias ls='ls --color=auto --group-directories-first'
alias ll='ls -la --color=auto'

alias mutt='neomutt'

alias bk="rsync -azv --delete --delete-excluded --exclude=.cache $HOME /mnt/backup"
alias sc="scrot $HOME/scrots/%Y-%m-%d::%H:%M:%S.png -s -e 'xclip -selection clipboard -t image/png < \$f'"

alias ar="cd $HOME/pr/ar"
alias pl="cd $HOME/pr/pl"
alias os="cd $HOME/pr/os"
alias re="cd $HOME/pr/re"

alias csig='git log --show-signature'
alias dprev='git diff HEAD~ HEAD'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias urldecode="python -c 'import urllib.parse; import sys; print(urllib.parse.unquote(sys.argv[1]))'"
