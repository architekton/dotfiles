# Perl local build lib
export PERL_MB_OPT="--install_base $HOME/.local/lib/perl5";
export PERL_MM_OPT="INSTALL_BASE=$HOME/.local/lib/perl5";
export PERL5LIB="$HOME/.local/lib/perl5/lib/perl5";
export PATH="$HOME/.local/lib/perl5/bin:$PATH";
export PERL_LOCAL_LIB_ROOT="$HOME/.local/lib/perl5:$PERL_LOCAL_LIB_ROOT";

# Go
export GOPATH=$HOME/go
export PATH=$HOME/go/bin:$PATH

export PATH=$HOME/scripts:$PATH
export PATH=$HOME/.local/bin:$PATH
export CHROOT=$HOME/chroot

export EDITOR=vim

if [ -f $HOME/.env ]; then
    source $HOME/.env
fi
