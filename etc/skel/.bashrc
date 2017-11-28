#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim
export GIT_PS1_SHOWDIRTYSTATE=1
export LIBVA_DRIVER_NAME=i965
export VISUAL=vim

if [ -d ~/Scripts ]; then
    export PATH=${PATH}:~/Scripts
fi

# ssh-agent
. ssh-find-agent.sh
ssh-find-agent -a || eval $(ssh-agent) > /dev/null

# git
. /usr/share/git/completion/git-completion.bash
. /usr/share/git/completion/git-prompt.sh

alias ls='ls --color=auto'
alias ll='ls -lh'
alias mv='mv -i'
alias rm='rm -i'
alias vi='vim'

PS1='[\[\033[0;34m\]\[\e[1m\]\u\[\e(B\e[m\]@\[\033[0;30m\]\[\e[1m\]\h\[\e(B\e[m\] \W]\[\033[01;38;5;202m\]$(__git_ps1 " (%s)")\[\e(B\e[m\]\$ '
