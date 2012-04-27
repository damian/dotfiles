# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Colours in dark terminal
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=always'

# List files with trailing forward slashes for directories
alias ll="ls -alp"

# Jump to common directories
alias dev="cd ~/development"
alias website="cd ~/development/sage_one_website"
alias sageone="cd ~/development/sage_one"
alias sop="cd ~/development/sop/platform_team_sop"
alias usop="cd ~/development/sop/ui_team_sop"

# navigation
alias ..="cd .."
alias ...="cd ../.."

# Make a directory and move into it
function take() { mkdir $1; cd $1; }

# Reload aliases
alias reload="source ~/.bash_aliases"

# Edit configs
alias vimconfig="vim ~/.vimrc"
alias bashconfig="vim ~/.bash_aliases"

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

# Custom grep
alias dgrep="grep -lir --exclude=\*.svn\* --exclude=\*.swp --exclude=\*.log"

# Find all files below the current directory containing a particular extension
function ff() {
  if [ -z "$1" ]
  then
    echo "You must provide a file type"
  else
    find . -name "*.$1"
  fi
}
