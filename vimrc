set laststatus=2

execute pathogen#infect()

set nocompatible
set encoding=utf-8
set showcmd " Show partially entered command in bottom right.
syntax on
filetype plugin indent on
set number

"" Whitespace.
set tabstop=2 shiftwidth=2
set expandtab " Insert spaces for tab key.
set backspace=indent,eol,start " Backspace through everything in insert mode.

"" Highlight tabs and trailing whitespace.
set listchars=tab:⇀\ ,trail:·
set list

"" Make 81st column stand out.
call matchadd('ColorColumn', '\%81v', 100)

"" Searching.
set incsearch " Incremental search.
set ignorecase " Case-insensitive search...
set smartcase " ... unless they contain at least one capital letter.
set hlsearch " Highlight matches.

"" Colors.
colorscheme railscasts
set background=dark

"" Key mappings.
  "" Easy split navigation.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" vim-airline configs.
let g:airline_theme='solarized'
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'

"" vim-go.
let g:go_disable_autoinstall = 1
let g:go_goimports_bin="/Data/working_copies/go-workspace/bin/goimports"

"" Disable automatic insertion of comments - I can do that myself.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

