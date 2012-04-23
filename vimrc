filetype off

" Use Vim settings
set nocompatible

" Show the cursor all the time
set ruler

" Enhance scrolling
set ttyfast

" Line wrap
set wrap

" Turn syntax highlighting on
syntax on

"NERD TREE
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() |  NERDTree | endif
let NERDTreeShowHidden=1

" Set the leader key
let mapleader = ","

" Set jj as Esc alternative
inoremap jj <Esc>

" Swap file directory - stop swp polluting the working directory
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

" Rails specific
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr

" Indent
set cindent
set smartindent

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

" Mouse
set mouse=a

" Color scheme
set t_Co=256
set background=dark
colorscheme badwolf

" Font
set guifont=ttf-inconsolata:h14:b

" Automatically enable spellcheck for text files
autocmd FileType textile,txt,rtf setlocal spell
au BufNewFile,BufRead *.ui set filetype=ruby

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

" Ctrl + n to remove all trailing whitespace
nnoremap <silent> <C-n> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Ctrl + hjkl for easy split navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
