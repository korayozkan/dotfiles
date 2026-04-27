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

# ===== SYSTEM =====
alias s="sudo"
alias up="sudo apt update && sudo apt upgrade -y"
alias i="sudo apt install"
alias r="sudo apt remove"
alias c="clear"
alias h="history"

# ===== FILE / NAVIGATION =====
alias ll="ls -la"
alias la="ls -a"
alias l="ls"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias dev="cd ~/projects"

# ===== FAST FILE OPS =====
alias mkdirp="mkdir -p"
alias rmf="rm -rf"
alias cp="cp -r"

# ===== GIT =====
alias g="git"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gl="git log --oneline --graph --all"
alias gb="git branch"

# ===== DOCKER =====
alias d="docker"
alias dps="docker ps"
alias di="docker images"
alias dcu="docker compose up"
alias dcd="docker compose down"
alias dcr="docker compose restart"

# ===== DEV =====
alias py="python3"
alias goru="go run ."
alias nod="node"
alias npmst="npm start"
alias npmi="npm install"

# ===== NETWORK =====
alias ip="ip a"
alias pingg="ping google.com"
alias ports="netstat -tulpn"
# docker
alias dps="docker ps"
alias dcu="docker compose up"
alias dcd="docker compose down"
# ===== CARGO (RUST) =====
alias cr="cargo run"
alias cb="cargo build"
alias cbr="cargo build --release"
alias ct="cargo test"
alias cc="cargo check"
alias ci="cargo init"
alias ca="cargo add"
alias cu="cargo update"
alias ccl="cargo clean"

# ===== NPM =====
alias ni="npm install"
alias nid="npm install --save-dev"
alias nr="npm run"
alias ns="npm start"
alias nb="npm run build"
alias nt="npm test"
alias ng="npx"
alias nu="npm update"
alias nci="npm ci"

# ===== QUICK EDIT =====
alias zc="code ~/.zshrc"
alias sz="source ~/.zshrc"




# ===== PERFORMANCE =====
DISABLE_AUTO_UPDATE="true"
