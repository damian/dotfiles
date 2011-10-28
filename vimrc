filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Use Vim settings
set nocompatible

" Show the cursor all the time
set ruler

set wrap

" Turn syntax highlighting on
if (has("gui_running"))
  syntax on
end

" Set the leader key
let mapleader = ","

" Swap file directory - stop swp polluting the working directory
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

" Split switching - sets the currently focussed split to be larger than the rest
set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will fail.
set winheight=5
set winminheight=5
set winheight=999

" Rails specific
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr

" Indent
set cindent
set smartindent
" set softtabstop=2

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

filetype plugin indent on

" Highlight current line
set cursorline

" Numbers
set number
set numberwidth=5

" Color scheme
let g:solarized_termcolors=256
set t_Co=256
set background=light
colorscheme solarized

" Automatically enable spellcheck for text files
autocmd FileType textile,txt,rtf setlocal spell

" Toggle spell checking on
nmap <silent> <leader>s :set spell!<CR>
nmap <silent> <leader>l :ls<CR>

" Set region to British English
set spelllang=en_gb

" Trailing characters and end of line
set list
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
hi NonText ctermfg=7 guifg=#FF73FD

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status bar
set laststatus=2
set cmdheight=2

" Use Ack instead of Grep when available
if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor
endif
