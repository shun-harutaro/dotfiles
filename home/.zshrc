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

# Tool shims (e.g. uv) — optional
[ -f "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"

# Machine-specific (AWS Bedrock, Claude Code env, secrets). Not tracked in this repo.
[ -f "$HOME/.zshrc.local" ] && . "$HOME/.zshrc.local"
eval "$(mise activate zsh)"
