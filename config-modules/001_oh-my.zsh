# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

if [ -d $ZSH ]
then
  ZSH_THEME="robbyrussell"
  source $ZSH/oh-my-zsh.sh
else
  echo "Oh My Zsh is not installed"
fi
