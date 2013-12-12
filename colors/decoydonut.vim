" Donut colorscheme
"
" Maintainer:   Zhenyi Tan <zhenyi@andadinosaur.com>
" Last Change:  2013 October 25
"
" Donut color scheme.
"


set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "donut"

hi Normal       gui=NONE guifg=#E5E5E5 guibg=#262626
hi Cursor       guifg=#262626 guibg=#C7D0DA
hi CursorLine   guibg=#333333
hi LineNr       guifg=#929292 guibg=#3A3A3A
hi CursorLineNr gui=NONE guifg=#CCCCCC guibg=#3A3A3A
hi Visual       guibg=#3B4A5C
hi MatchParen   guifg=#262626 guibg=#7D8287
hi NonText      guifg=#262626

hi Comment      guifg=#66C547
hi Todo         guifg=#66C547 guibg=NONE
hi String       guifg=#F34648
hi PreProc      guifg=#966D00
hi Statement    gui=NONE guifg=#8C4EB8
hi Type         gui=NONE guifg=#77A6EB
hi Identifier   guifg=#95DF6C
hi Boolean      guifg=#BB84DB
hi Constant     guifg=#BB84DB
hi Underlined   gui=underline guifg=#3875d7
hi Special      guifg=#E5E5E5
hi Title        gui=bold guifg=#E5E5E5
hi IncSearch    gui=NONE guibg=#F2E530 guifg=#000000
hi Search       gui=underline guibg=#565427 guifg=NONE
hi ErrorMsg     guibg=#633423 guifg=#E5E5E5
hi WarningMsg   guifg=#F34648

hi Pmenu        guibg=#FBFBFB guifg=#0D0D0D
hi PmenuSbar    guibg=#FBFBFB
hi PmenuSel     guifg=#FBFBFB guibg=#3875d7
hi PmenuThumb   gui=reverse

hi SpecialKey   guifg=#3875d7
hi ModeMsg      gui=NONE
hi MoreMsg      gui=NONE guifg=#E5E5E5
hi Question     gui=NONE guifg=#E5E5E5

hi diffNewFile  guifg=#F34648
hi diffFile     guifg=#66C547
hi diffAdded    guifg=#66C547 guibg=#292E28
hi diffRemoved  guifg=#F34648 guibg=#302828
hi diffChanged  guifg=#966d00 guibg=#2c2a24

if !exists("s:augroups_defined")
  au FocusLost * if exists("colors_name") && colors_name == "donut" | hi Visual guibg=#656565 | endif
  au FocusGained * if exists("colors_name") && colors_name == "donut" | hi Visual guibg=#3B4A5C | endif

  let s:augroups_defined = 1
endif

" black
" white
" grey
" lightgray
" darkgray
"
" red
" lightred
" darkred
"
" green
" lightgreen
" darkgreen
"
" yellow
" lightyellow
" brown
"
" blue
" lightblue
" darkblue
"
" magenta
" lightmagenta
" darkmagenta
"
" cyan
" lightcyan
" darkcyan

