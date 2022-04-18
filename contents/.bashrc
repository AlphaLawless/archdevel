#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ignore repeated commands
export HISTCONTROL=ignoreboth

alias ls='ls --color=auto'
PS1="\[\e[0;39m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;94m\]\$ \[\e[m\]\[\e[0;32m\]"
