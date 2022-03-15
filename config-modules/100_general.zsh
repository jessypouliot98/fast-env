ZSH_CONFIG=$HOME/.zshrc
FAST_ENV=$HOME/.fast-env
USER_ZSH_MODULE="$HOME/.user.zsh"

alias ll="ls -laf"
alias reload="source $ZSH_CONFIG"
alias edit:config="code $FAST_ENV"
alias edit:user-config="code $USER_ZSH_MODULE"
