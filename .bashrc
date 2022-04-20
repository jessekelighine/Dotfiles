# ~/.bashrc

shopt -s autocd
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

export PS1="\e[1;31m[\e[1;33m\u\e[1;37m@\e[1;34m\H \e[1;35m\w\e[1;31m]\e[0;37m\$ \e[0m"

alias 'la'='ls -lAhG'
alias 'lad'='ls -lAhG | grep "^d"'
alias 'mkdir'='mkdir -pv'
alias 'vim'='nvim'
