if [[ $OSTYPE == 'darwin'* ]]; then
  alias accented-press-and-hold:enable="defaults write -g ApplePressAndHoldEnabled -bool true"
  alias accented-press-and-hold:disable="defaults write -g ApplePressAndHoldEnabled -bool false"
fi