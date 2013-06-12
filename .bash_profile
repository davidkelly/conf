# load the magic git prompt stuff
source ~/.git-prompt.sh

export PS1="\h:\W \u \e[01;34m\$(__git_ps1) \e[00m\$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
