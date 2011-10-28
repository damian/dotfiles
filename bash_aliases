# navigation
alias ll="ls -al"
alias ..="cd .."
alias ...="cd ../.."
alias dev="cd ~/development"

# mkdir and cd into it
function take() { mkdir $1; cd $1; }
alias tk="take"

# bashrc & vimrc
alias rl="source ~/.bash_aliases"

# Git
alias g="git"

# Bundler
alias b="bundle"

# Rails
alias ss='script/server'
alias sc='script/console'
alias rr='rake routes'
alias migrate='rake db:migrate'
alias tlf='tail -f'

# Bash prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$RED\$(date +%H:%M) \w$YELLOW\$(parse_git_branch)\$ $NO_COLOUR"

# Edit bash_aliases
alias pr="vim ~/.bash_aliases"

# Edit vimconfig
alias vr="vim ~/.vimrc"

# Custom grep
alias dgrep="grep -lir --exclude=\*.svn\* --exclude=\*.swp --exclude=\*.log"

# Find all files below the current directory whose name contains
alias dfind="find . -name"

# Open folder
alias o="nautilus"
