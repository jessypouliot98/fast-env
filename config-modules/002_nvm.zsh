export NVM_DIR=$HOME/.nvm

if [ -s "$NVM_DIR/nvm.sh" ];
then
  # Setup
  \. "$NVM_DIR/nvm.sh"

  # Aliases
  alias nvm:link="nvm:link:node && nvm:link:npm && nvm:link:npx && nvm:link:yarn"
  alias nvm:link:node="echo Linking node && rm -rf /usr/local/bin/node && ln -s $NVM_BIN/node /usr/local/bin/node"
  alias nvm:link:npm="echo Linking npm && rm -rf /usr/local/bin/npm && ln -s $NVM_BIN/npm /usr/local/bin/npm"
  alias nvm:link:npx="echo Linking npx && rm -rf /usr/local/bin/npx && ln -s $NVM_BIN/npm /usr/local/bin/npx"
  alias nvm:link:yarn="echo Linking yarn && rm -rf /usr/local/bin/yarn && ln -s $NVM_BIN/yarn /usr/local/bin/yarn"
else
  echo "NVM not installed"
fi