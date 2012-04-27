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

# Bash colours
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[0;37m\]"

# Custom prompt
export PS1="$CYAN\w $PURPLE\$(__git_ps1 \"(%s)\")$WHITE § "

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
