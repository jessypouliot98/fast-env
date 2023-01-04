export NVM_DIR=$HOME/.nvm

if [ -s "$NVM_DIR/nvm.sh" ];
then
  # Setup
  \. "$NVM_DIR/nvm.sh"

  export PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH" # Make Yarn global CLI available
fi