export LANG=en_US.UTF-8

# ZSH Setup
username=$(whoami)
export ZSH="/home/$username/.oh-my-zsh"

ZSH_THEME="oxide"
ZSH_DISABLE_COMPFIX="true"

plugins=(git colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias c="clear && printf '\e[3J'"
alias cat="ccat"
alias cdgit="cd /mnt/c/Users/Seth/git"
alias config="vi ~/.zshrc"
alias log="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias ls="exa -bhlFa --group-directories-first"
alias reload="source ~/.zshrc"
alias split="byobu"
alias vi="vim"

# Byobu Commands
alias h="byobu split-window -v"
alias v="byobu split-window -h"
alias left="byobu resize-pane -L 10"
alias right="byobu resize-pane -R 10"
alias up="byobu resize-pane -U 10"
alias down="byobu resize-pane -D 10"
