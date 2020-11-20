" Turn off vi compatibility
set nocompatible

" Turn syntax highlighting on
syntax on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go'
Plug 'trusktr/seti.vim'
Plug 'sheerun/vim-polyglot'
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-vinegar'
Plug 'preservim/nerdtree'
Plug 'lepture/vim-jinja'
Plug '/usr/local/opt/fzf'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()

set noswapfile

" Set the leader key
let mapleader = ","

" Remove newlines at end of file
set noeol
au BufNewFile * set noeol
au BufWritePre * :set binary | set noeol
au BufWritePost * :set nobinary | set eol

" Show the cursor all the time
set ruler

" Enhance scrolling
set ttyfast

" Line wrap
set wrap

" NERDTree
let NERDTreeShowHidden=1

" Toggle NERDTree with ,n
map <leader>n :NERDTreeToggle<cr>

map <leader>t :FZF<cr>

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
set autoindent

filetype plugin indent on

" Highlight current line
set cursorline

" Numbers
set number
set numberwidth=5

" Mouse
set mouse=a

set nolist
set encoding=utf-8

" Color scheme
set t_Co=256
set bg=dark
colorscheme jellybeans

" Automatically enable spellcheck for text files
autocmd FileType md,markdown,textile,txt,rtf setlocal spell

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
set showmatch
set noshowmode

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

highlight ColorColumn ctermbg=4
set colorcolumn=80

" Ctrl + e to switch back to previous buffer
nmap <C-e> :e#<CR>

" Ctrl + n to Switch to next buffer
" nmap <C-n> :bnext<CR>
" nmap <C-p> :bprev<CR>

" Powerline settings
set encoding=utf-8
let g:Powerline_symbols = 'fancy'

" Prettier
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync
let g:prettier#autoformat = 1
let g:prettier#exec_cmd_async = 1
au BufNewFile,BufRead *.njk set ft=jinja