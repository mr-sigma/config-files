" vim-plug
call plug#begin()

" Colors
Plug 'altercation/vim-colors-solarized'

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
set colorcolumn=80
set number

" NO TABS
set expandtab

" Colors
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termtrans = 1
let g:solarized_termcolors=16
colorscheme solarized
