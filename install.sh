#! /usr/bin/env bash

FAST_ENV_DIR="$HOME/.fast-env"

cd $HOME

if [ ! -d $FAST_ENV_DIR ]
  then
    echo "Cloning Fast-Env"
    git clone https://github.com/jessypouliot98/fast-env.git $FAST_ENV_DIR
  else
    echo "Fast-Env is already installed"
    echo "Updating Fast-Env"
    cd $FAST_ENV_DIR
    git pull
fi

echo "Adding fast-env to your .zshrc"
echo "source $FAST_ENV_DIR/main.zsh" >> $HOME/.zshrc

echo "Close terminal and reopen or run \"source $HOME/.zshrc\" to load new configuration"
