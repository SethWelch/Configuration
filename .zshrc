export LANG=en_US.UTF-8

# ZSH Setup
username=$(whoami)
export ZSH="/home/$username/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_DISABLE_COMPFIX="true"

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)

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
alias vi="vim"

# tmux
alias h='tmux split-window'
alias v='tmux split-window -h'
