# rbenv configuration
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# golang configuration
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Ensure any call to editor opens in VIM
export EDITOR=vim

# Jump to common directories
alias dev="cd ~/dev"

# Source any local aliases
if [ -f ~/.bash_aliases.local ]; then
  . ~/.bash_aliases.local
fi

# navigation
alias ll="ls -alp"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Make a directory and move into it
function take() { mkdir $1; cd $1; }

# Reload aliases
alias reload="source ~/.bash_aliases"

# Git
alias g="git"
alias gut="git"

# Bundler
alias b="bundle"
alias be="bundle exec"
alias run="bundle exec rails s"

# Bash colours
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"
WHITE="\[\033[0;37m\]"

# Custom prompt
export PS1="$CYAN\w $PURPLE\$(__git_ps1 \"(%s)\")$WHITE § "
