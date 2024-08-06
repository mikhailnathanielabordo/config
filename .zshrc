# ------
# Work Setup
# ------
alias chrome='open /Applications/Google\ Chrome.app --args --ignore-certificate-errors'
export PATH="/usr/local/mysql/bin:$PATH"
export QUEUE_PREFIX=mikhailnathanielperezabordo # Change to local path
export PATH="$PATH:$HOME/.composer/vendor/bin"
# Python env manager settings
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH=$PATH:/Users/mikhailnathanielperezabordo/.local/bin

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export WORKSPACE_DIR=/Users/mikhailnathanielperezabordo/workspace
export GITHUB_TOKEN="Add Github Token Here"

# Add AWS Config here for TIAI
export AWS_ACCESS_KEY_ID="###################"
export AWS_SECRET_ACCESS_KEY="###################"
export AWS_SESSION_TOKEN="###################"

# Aliases

# ------
# Git
# ------
alias co='git checkout'
alias log='git log'
alias logt='log --graph --decorate --oneline --all'
alias diff='git diff'
alias br='git branch'
alias st='git status'
alias fetch='echo "Fetching..." && git fetch --all --prune'
alias push='echo "Pushing..." && git push origin head'
alias pull='echo "Pulling..." && git pull origin $(git branch | sed -n -e "s/^\* \(.*\)/\1/p")'
alias fp='fetch && pull'
alias gmm='echo "Merge from master." && git merge master'
alias com='co master'
alias com='co develop'
alias brd='br -D'
alias gc='git commit'
alias gcm='gc -m'
alias grl='git remote -v'
alias ga='git add'
alias gra='git remote add'
alias grp='git cherry-pick -n'
alias rev='git reset HEAD~'

# -------
# Shortcuts
# -------
alias ll='ls -la'
alias editbash='vi ~/.zshrc'
alias c="clear"
alias ip="curl icanhazip.com"
alias o="open ."
alias ssh-list="cat ~/.ssh/config"

# ------
# Folder directory
# ------
alias cdai='cd ~/workspace'

# ------
# Kubernetes
# ------
alias kc=`pwd`/utils/kc.sh
