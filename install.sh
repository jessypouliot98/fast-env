#! /usr/bin/env bash

FAST_ENV_DIR="$HOME/.fast-env"

cd $HOME

echo "Cloning Fast-Env"
git clone https://github.com/jessypouliot98/fast-env.git $FAST_ENV_DIR

if test -f "$HOME/.zshrc"; then
  echo "Renaming previous .zshrc config to .zshrc.old"
  mv $HOME/.zshrc $HOME/.zshrc.old
fi

echo "Linking ./fast-env/main.zsh to ./zshrc"
ln -s $FAST_ENV_DIR/main.zsh $HOME/.zshrc

echo "Close terminal and reopen or run \"source $HOME/.zshrc\" to load new configuration"
