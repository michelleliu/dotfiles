export TERM=xterm-256color
# begin .bash_profile.ext
[ -e $HOME/.dbgdot ] && echo "entering .bash_profile.ext"

# User additions to .bash_profile go in this file
# sps() {
#    echo "$PWD" | sed -r 's|/(..)[^/]*|/\1|g'
# }
 _PS1 ()
{
    local PRE= NAME="$1" LENGTH="$2";
    [[ "$NAME" != "${NAME#$HOME/}" || -z "${NAME#$HOME}" ]] &&
        PRE+='~' NAME="${NAME#$HOME}" LENGTH=$[LENGTH-1];
    ((${#NAME}>$LENGTH)) && NAME="/...${NAME:$[${#NAME}-LENGTH+4]}";
    echo "$PRE$NAME"
}
PS1='\[\033[36m\]m\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]$(_PS1 "$PWD" 30)\[\033[m \]\$ '
#PS1='\[\033[36m\]m\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]$(_PS1 "$PWD" 20)\[\033[m \]\$ '
#PS1='$(eval "sps")$ '
#PS1="[\W]\\$"
#PS1='\u@\h:$(_PS1 "$PWD" 20)\$ '
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m    \]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
#alias amacs='aquamacs'
#alias vmd='/Applications/VMD\ 1.9.1.app/Contents/MacOS/startup.command'
alias tmux='TERM=xterm-256color tmux'
# Un-comment and modify the following template for system-specific
# personal settings.
#
# if [ "$NERSC_HOST" == "hopper" ]
# then
#   export MY_ENV_VAR="my_val"
# fi

[ -e $HOME/.dbgdot ] && echo "exiting .bash_profile.ext"
# end .bash_profile.ext
export PATH=/usr/local/bin:$PATH

test -r /sw/bin/init.sh && . /sw/bin/init.sh
