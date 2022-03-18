# Load seperated config files
for conf in "$HOME/.fast-env/config-modules/"*.zsh; do
  source "${conf}"
done
unset conf
