" Pathogen - https://github.com/tpope/vim-pathogen
execute pathogen#infect()

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
