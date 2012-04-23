export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

# List files with colour
alias ls="ls -Gp"
alias ll="ls -alGp"

# Jump to common directories
alias dev="cd ~/development"
alias website="cd ~/development/sage-one/sage-one-website"
alias sageone="cd ~/development/sage-one/sage-one"
alias sop="cd ~/development/platform/sop"

# navigation
alias ..="cd .."
alias ...="cd ../.."

# mkdir and cd into it
function take() { mkdir $1; cd $1; }
alias tk="take"

# bashrc & vimrc
alias pr="vim ~/.bash_aliases"
alias rl="source ~/.bash_aliases"

# Git
alias g="git"

# Bundler
alias b="bundle"
alias be="bundle exec"
alias run="bundle exec rails s"

# Log
alias tlf='tail -f'

# Bash prompt
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[1;37m\]"

function parse_git_dirty {
  local STATUS=`git status 2>&1`
  if [[ "$STATUS" == *'Not a git repository'* ]]
    then
      echo ""
  else
    if [[ "$STATUS" == *'working directory clean'* ]]
    then
      echo -e "$GREEN✔"
    else
      echo -e "$RED✗"
    fi
  fi
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1)/"
}

# PS1="$YELLOW↪ \w$CYAN\$(parse_git_branch)\$(parse_git_dirty) "
PS1="\w \$(parse_git_branch) "

# Edit vimconfig
alias vr="vim ~/.vimrc"

# Custom grep
alias dgrep="grep -lir --exclude=\*.svn\* --exclude=\*.swp --exclude=\*.log"

# Find all files below the current directory whose name contains
alias dfind="find . -name"
