[[ -s "/Users/benedikt/.rvm/scripts/rvm" ]] && source "/Users/benedikt/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Add the following to your ~/.bashrc or ~/.zshrc
hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'

function explain {
  url="http://explainshell.com/explain/$1?args="
  shift;
  for i in "$@"; do
    url=$url"$i""+"
  done
  open $url
}

hitch

export PATH="/usr/local/heroku/bin:$PATH"
