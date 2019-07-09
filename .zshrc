[[ ! -o interactive ]] && return

# Completion
autoload -U compinit && compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' rehash true

# Navigate without typing cd
setopt autocd

# Glob
setopt extendedglob

# History
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt histignorealldups sharehistory

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

# Prompt
source "$HOME/.zsh/zsh-git-prompt/zshrc.sh"
autoload -U colors && colors
PROMPT='%{$fg[green]%}λ >%{$reset_color%} '
RPROMPT='%2d~$(git_super_status)'

# Load aliases
source "$HOME/.zsh/aliases.zsh"

# Autosuggestion plugin
source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

# SSH
# ssh-agent
# https://stackoverflow.com/a/18915067
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo "succeeded"
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
}

# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    ps ${SSH_AGENT_PID} > /dev/null || start_agent
else
    start_agent
fi

export GPG_TTY=$(tty)
