#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shun_harutaro/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shun_harutaro/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shun_harutaro/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shun_harutaro/google-cloud-sdk/completion.zsh.inc'; fi

# alias of Google Chrome
alias chrome="open -a /Applications/Google\ Chrome.app"
