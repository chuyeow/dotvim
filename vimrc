source ~/.local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

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

"" Highlight tabs and trailing whitespace.
set listchars=tab:⇝\ ,trail:·
set list

"" Make 81st column stand out.
call matchadd('ColorColumn', '\%81v', 100)

"" Searching.
set incsearch " Incremental search.
set ignorecase " Case-insensitive search...
set smartcase " ... unless they contain at least one capital letter.

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

"" Disable automatic insertion of comments - I can do that myself.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

