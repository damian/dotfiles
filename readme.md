My dotfiles
===========

Installation
------------

```bash
  git clone git://github.com/damian/dotfiles.git
  cd dotfiles
  sh install.sh
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh
  brew bundle --file=./Brewfile
```

Vim bindings
------------

A few notable vim keybindings that I've picked up.

* `ctrl + n` Remove all trailing whitespace from the current file
* `,n` Toggle NERDTree
* `ctrl + h` Go to split left
* `ctrl + j` Go to split below
* `ctrl + k` Go to split right
* `ctrl + l` Go to split above
* `jj` Alternative to Esc

Bash aliases
------------

* `take project_x` Makes a directory called project_x and cd's in to it
* `..` Move up one directory
* `...` Move up two directories

Git
---

* Sets the default editor to vim
* `git s` Alias for git status with short output
* `git b` Alias for git branch
* `git cob feature_x` Creates a branch called feature_x and moves to it
* `git difftool` Is hooked up to Kaleidoscope app