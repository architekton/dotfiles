[[ $- != *i* ]] && return

autoload -U compinit
compinit

# Perl local build lib
export PERL_MB_OPT="--install_base $HOME/.local/lib/perl5";
export PERL_MM_OPT="INSTALL_BASE=$HOME/.local/lib/perl5";
export PERL5LIB="$HOME/.local/lib/perl5/lib/perl5";
export PATH="$HOME/.local/lib/perl5/bin:$PATH";
export PERL_LOCAL_LIB_ROOT="$HOME/.local/lib/perl5:$PERL_LOCAL_LIB_ROOT";

export PATH=$HOME/scripts:$PATH
export CHROOT=$HOME/chroot
export EDITOR=vim

setopt histignoredups no_sharehistory

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

source $HOME/.zsh/minimal.zsh
source $HOME/.zsh/aliases.zsh
