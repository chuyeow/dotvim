set laststatus=2

set nocompatible
filetype plugin on

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-haml'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'

" Add Vundle Plugins added before the following line.
call vundle#end()
filetype plugin indent on

set encoding=utf-8
set showcmd " Show partially entered command in bottom right.
syntax on
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

"" neocomplcache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
  " <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"" vim-airline configs.
let g:airline_theme='bubblegum'
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'

"" vim-go.
let g:go_disable_autoinstall=1
let g:go_goimports_bin="/Data/working_copies/go-workspace/bin/goimports"

"" Disable automatic insertion of comments - I can do that myself.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"" Syntax highlight mappings.
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *.hbs.haml,*.js.hamlbars set filetype=haml
