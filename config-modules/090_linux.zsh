if [[ $OSTYPE != 'darwin'* ]]; then
  alias linux-sleep:enable="sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target"
  alias linux-sleep:disable="sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target"
fi