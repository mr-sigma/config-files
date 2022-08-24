set nocompatible
set re=0

" vim-plug
call plug#begin()


" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'

" General
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-jdaddy'
Plug 'ctrlpvim/ctrlp.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Rails
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rake'

" Syntax
Plug 'sheerun/vim-polyglot'

" Lint
Plug 'w0rp/ale'

call plug#end()

" Allow for scrolling through wrapped lines
nmap k gk
nmap j gj

" Enable matchit
runtime macros/matchit.vim

" ESLINT
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fix_on_save = 1

" Idiosyncrasies
syntax on
filetype plugin indent on
set shiftwidth=2
set colorcolumn=80
set number
set hlsearch

" NO TABS
set expandtab

" Colors
syntax enable
colorscheme jellybeans
