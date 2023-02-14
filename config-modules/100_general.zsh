ZSH_CONFIG=$HOME/.zshrc
FAST_ENV=$HOME/.fast-env

alias ll="ls -la" 
alias reload="source $ZSH_CONFIG"
alias fastenv:load="cd $FAST_ENV && git pull"
alias fastenv:save="cd $FAST_ENV && git add . && git commit -m \"save\" && git push"
alias edit:config="code $FAST_ENV"
alias edit:zsh="code $ZSH_CONFIG"

kill:port() {
  local port="$1"
  kill -9 $(lsof -ti:$port)
}