" Turn off vi compatibility
set nocompatible

filetype off

" Configure Bundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Source Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
  source ~/.vimrc.bundles.local
endif

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
colorscheme herald

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

highlight ColorColumn ctermbg=4
set colorcolumn=80

" Ctrl + e to switch back to previous buffer
nmap <C-e> :e#<CR>

" Ctrl + n to Switch to next buffer
" nmap <C-n> :bnext<CR>
" nmap <C-p> :bprev<CR>

nmap ; :CtrlPBuffer<CR>

let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" Powerline settings
set encoding=utf-8
let g:Powerline_symbols = 'fancy'

" Show highlighting groups for current word
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
