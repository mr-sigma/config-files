" vim-plug
call plug#begin()

" General
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'

" Rails
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rake'

call plug#end()

" Allow for scrolling through wrapped lines
nmap k gk
nmap j gj

" Enable matchit
runtime macros/matchit.vim

" Idiosyncrasies
syntax on
filetype plugin indent on
set shiftwidth=2

" NO TABS
set expandtab
