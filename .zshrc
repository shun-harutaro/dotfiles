## lang
export LANG=ja_JP.UTF-8

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

setopt auto_cd
setopt share_history

# alias
alias v='nvim'
alias ide='~/dotfiles/scripts/ide.sh'
# ls
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
# git
alias gs='git status'
alias gb='git branch'
alias gaa='git add .'
alias gcm='git commit -m'
alias gp='git push'

# OS dependences
case ${OSTYPE} in
  darwin*)
    export PATH="\$PATH:/usr/local/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
    ;;
  linux*)
    # setting for linux
    ;;
esac

# ENV
export PATH="$PATH:/home/shun_harutaro/.local/bin" # PATH: pipenv

export DENO_INSTALL="/home/shun_harutaro/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shun/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shun/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shun/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shun/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
