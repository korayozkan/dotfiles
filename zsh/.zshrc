# ===== OH MY ZSH =====
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ===== ENV =====
export LANG=en_US.UTF-8

# ===== ALIASES =====
alias c="clear"
alias ll="ls -la"
alias la="ls -a"
alias gs="git status"
alias gp="git push"
alias gpl="git pull"
alias v="code ."
alias ..="cd .."
alias ...="cd ../.."

# dev shortcuts
alias dev="cd ~/projects"
alias py="python3"
alias g="go run ."

# docker
alias dps="docker ps"
alias dcu="docker compose up"
alias dcd="docker compose down"

# ===== PERFORMANCE =====
DISABLE_AUTO_UPDATE="true"