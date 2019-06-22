alias ls='ls --color=auto --group-directories-first'
alias ll='ls -la --color=auto'

alias vim='nvim'
alias mutt='neomutt'

alias bk="rsync -azv --delete --delete-excluded --exclude=.cache $HOME /mnt/backup"
alias pmemsort="ps -eo size,pid,user,command --sort -size | awk '{ hr=\$1/1024 ; printf(\"%13.2f Mb \",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf(\"%s \",\$x) } print "" }'"

alias ar="cd $HOME/pr/ar"
alias pl="cd $HOME/pr/pl"
alias os="cd $HOME/pr/os"
alias re="cd $HOME/pr/re"
alias ec="cd $HOME/pr/ewr"

alias csig='git log --show-signature'
alias dprev='git diff HEAD~ HEAD'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias clrun="RUST_LOG=info cargo run"
alias cbrun="RUST_BACKTRACE=1 cargo run"

alias urldecode="python -c 'import urllib.parse; import sys; print(urllib.parse.unquote(sys.argv[1]))'"
alias b64decode="python -c 'import base64; import sys; print(base64.b64decode(sys.argv[1]).decode())'"
alias b64encode="python -c 'import base64; import sys; print(base64.b64encode(sys.argv[1].encode()).decode())'"

function sd
{
    [[ -d "$(pwd)" ]] || return 1
    echo "$(pwd)" > ~/.last_dir
}

function rd
{
    local path=$(head -n 1 ~/.last_dir)
    [[ -d "$path" ]] || return 1
    cd "$path"
}
