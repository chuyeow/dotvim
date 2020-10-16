let mapleader = " "

" File explorer shortcuts.
nnoremap <Leader>b :Vexplore<CR> :vertical resize 40<CR>

" Activate fzf to find in files.
nnoremap <Leader>f :Rg<CR>
nnoremap <Leader>t :Files<CR>
nnoremap <Leader><Space> :Buffers<CR>

" Quicker navigation between splits.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Navigate buffers.
nnoremap <silent> <C-n> :bn<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>c :bd<CR>

" For switching tabs based on their number.
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt

" Clear search highlights.
nnoremap <Leader>sc :noh<CR>

" Comment/uncomment with Commentary.
nnoremap <Leader>/ :Commentary<CR>

" Source vimrc with <Leader>rv.
nnoremap <Leader>rv :source ~/.vimrc<CR>:echo "Reloaded .vimrc"<CR>

" vim-go.
nnoremap <Leader>def :GoDef<CR>

set number
set showcmd     " Show (partial) command in status line.
set showmatch   " Show matching brackets.
set ignorecase  " Case-insensitive matching.
set incsearch   " Incremental search.
set hlsearch    " Highlight matching search patterns.
set autowrite   " Automatically save before commands like :next and :make.
set cursorline  " Highlight current line.
set mouse=a     " Enable mouse usage (all modes).
set backspace=indent,eol,start  " Allow Backspace to work most of the time.
set updatetime=300  " Delay in ms before Vim writes its swap file.
set timeoutlen=500  " Time vim waits after a key code or mapped key is entered. Default: 1000ms.
set laststatus=2   " Always display the status line.

set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

set colorcolumn=80,120
set tabstop=2
set shiftwidth=2  " Make an indent correspond to a single tab.

" Themes are located in ~/.vim/pack/themes/start.
packadd! dracula
syntax enable
colorscheme dracula
" colorscheme base16-default-dark

" vim-plug plugin manager.
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged') " Directory for plugins.

" fzf to search across many files.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'kien/ctrlp.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" lightline allows deeper customization of the statusline.
Plug 'itchyny/lightline.vim'

" Buftabline displays the buffer list in the tabline.
Plug 'ap/vim-buftabline'

" golden-ratio resizes the focused window to the perfect size for editing.
Plug 'roman/golden-ratio'

" Commentary let's you comment out stuff using "gc<text object>".
Plug 'tpope/vim-commentary'

" CoC (aka Conquer of Completion) adds incremental autocompletion, with LSP
" support.
" TODO I haven't configured this plugin.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-which-key displays available keybindings.
" https://github.com/liuchengxu/vim-which-key
Plug 'liuchengxu/vim-which-key'

call plug#end()

" Lightline: customize lightline colorscheme.
let g:lightline = {
	\ 'colorscheme': 'onedark',
  \ 'component_function': {
  \   'filename': 'LightlineFilename'
  \  }
  \}
function! LightlineFilename()
	return expand('%p:h')
endfunction

" CtrlP: enable cross-session caching.
let g:ctrlp_clear_cache_on_exit = 0

" CtrlP: scan for dotfiles and dotdirs.
let g:ctrlp_show_hidden = 1

" CtrlP: use ripgrep if it's available.
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif

" Highlight trailing whitespace.
highlight RedundantSpaces ctermbg=red guibg=IndianRed
match RedundantSpaces /\s\+$/
" Strip trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" netrw: show tree view.
let g:netrw_liststyle = 3
