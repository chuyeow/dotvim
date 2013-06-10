execute pathogen#infect()

set nocompatible
set encoding=utf-8
set showcmd " Show partially entered command in bottom right.
syntax on
filetype plugin indent on

"" Whitespace.
set tabstop=2 shiftwidth=2
set expandtab " Insert spaces for tab key.
set backspace=indent,eol,start " Backspace through everything in insert mode.

"" Searching.
set incsearch " Incremental search.
set ignorecase " Case-insensitive search...
set smartcase " ... unless they contain at least one capital letter.

colorscheme railscasts
set background=dark
