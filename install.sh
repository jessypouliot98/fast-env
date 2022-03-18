#! /usr/bin/env bash

FAST_ENV_DIR="$HOME/.fast-env"

cd $HOME

echo "Cloning Fast-Env"
git clone https://github.com/jessypouliot98/fast-env.git $FAST_ENV_DIR

echo "Adding fast-env to your .zshrc"
SOURCE_FAST_ENV=$(cat <<-END
\n
# START Sourcing fast-env config\n
source $FAST_ENV_DIR/main.zsh\n
# END\n
END
)
echo $SOURCE_FAST_ENV >> $HOME/.zshrc

echo "Close terminal and reopen or run \"source $HOME/.zshrc\" to load new configuration"
