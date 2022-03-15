ZSH_CONFIG=$HOME/.zshrc
FAST_ENV=$HOME/.fast-env
USER_ZSH_MODULE="$HOME/.user.zsh"

alias ll="ls -laf"
alias reload="source $ZSH_CONFIG"
alias fastenv:load="cd $FAST_ENV && git pull"
alias fastenv:save="cd $FAST_ENV && git add . && git commit -m \"save\" && git push"
alias edit:config="code $FAST_ENV"
alias edit:user-config="code $USER_ZSH_MODULE"
