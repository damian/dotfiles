" Remove toolbar
set guioptions-=T

" Local config
if filereadable($HOME . "/.gvimrc.local")
  source ~/.gvimrc.local
end
