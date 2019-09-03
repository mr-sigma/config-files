" vim-plug
call plug#begin()

" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.6' }

" General
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
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

" Javascript
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'

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
