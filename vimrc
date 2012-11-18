" Ward off unexpected distro defaults
set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'Solarized'

filetype plugin indent on " required!

" Set the leader key
let mapleader = ","

" Show the cursor all the time
set ruler

" Enhance scrolling
set ttyfast

" Line wrap
set wrap

" Turn syntax highlighting on
syntax on

" NERDTree
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() |  NERDTree | endif
let NERDTreeShowHidden=1

" Set jj as Esc alternative
inoremap jj <Esc>

" Swap file directory - stop swp polluting the working directory
set backupdir=$HOME/.vim/tmp
set directory=$HOME/.vim/tmp

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
colorscheme solarized

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

" Tab completion
set wildmenu
set wildmode=list:longest

" Ctrl + n to remove all trailing whitespace
nnoremap <silent> <C-n> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Ctrl + hjkl for easy split navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Sudo write (,W)
noremap <leader>W :w !sudo tee %<CR>

" Paste toggle (,p)
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" Toggle NERDTree with ,n
map <leader>n :NERDTreeToggle<cr>
