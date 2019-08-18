" _ __   ___  _____   _(_)_ __ ___  
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
"| | | |  __/ (_) \ V /| | | | | | |
"|_| |_|\___|\___/ \_/ |_|_| |_| |_|
set number
"dein.vim
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  let g:deoplete#enable_at_startup = 1
  
  let s:toml_dir = $HOME . '/.config/nvim/dein/toml'
  let s:toml = s:toml_dir . '/dein.toml'
  "let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml, {'lazy': 0})
  "call dein#load_toml(s:toml_lazy, {'lazy':1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable    

