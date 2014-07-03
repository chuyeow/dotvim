" Donut colorscheme
"
" Maintainer:   Zhenyi Tan <zhenyi@andadinosaur.com>
" Last Change:  2014 July 3
"
" The Decoy Donut color scheme.
"

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "donut"

hi Normal gui=NONE guifg=#ebebeb ctermfg=255 guibg=#222222 ctermbg=235

hi CursorLine gui=NONE guifg=NONE ctermfg=NONE guibg=#303030 ctermbg=236
hi CursorColumn gui=NONE guifg=NONE ctermfg=NONE guibg=#303030 ctermbg=236
hi MatchParen gui=BOLD guifg=NONE ctermfg=NONE guibg=#9fafc1 ctermbg=145

hi TabLine gui=ITALIC guifg=#000000 ctermfg=16 guibg=#b0b8c0 ctermbg=145
hi TabLineFill gui=NONE guifg=#9098a0 ctermfg=103 guibg=NONE ctermbg=NONE
hi TabLineSel gui=ITALIC,BOLD guifg=#000000 ctermfg=16 guibg=#f0f0f0 ctermbg=255

hi Pmenu gui=NONE guifg=#000000 ctermfg=16 guibg=#ffffff ctermbg=231
hi PmenuSel gui=NONE guifg=#ffffff ctermfg=231 guibg=#8c8c90 ctermbg=245

hi Visual gui=NONE guifg=NONE ctermfg=NONE guibg=#4b5d6f ctermbg=59
hi Cursor gui=NONE guifg=NONE ctermfg=NONE guibg=#d1d9e1 ctermbg=188

hi LineNr gui=NONE guifg=#929292 ctermfg=246 guibg=#3a3a3a ctermbg=237
hi CursorLineNr gui=NONE guifg=#ebebeb ctermfg=255 guibg=#3a3a3a ctermbg=237
hi Comment gui=ITALIC guifg=#888888 ctermfg=102 guibg=NONE ctermbg=NONE
hi Todo gui=BOLD guifg=#888888 ctermfg=102 guibg=NONE ctermbg=NONE

hi StatusLine gui=ITALIC guifg=#000000 ctermfg=16 guibg=#dddddd ctermbg=188
hi StatusLineNC gui=ITALIC guifg=#ffffff ctermfg=231 guibg=#403c41 ctermbg=237
hi VertSplit gui=NONE guifg=#777777 ctermfg=243 guibg=#403c41 ctermbg=237
hi WildMenu gui=NONE guifg=#f0a0c0 ctermfg=217 guibg=#302028 ctermbg=52

hi Folded gui=ITALIC guifg=#a0a8b0 ctermfg=145 guibg=#384048 ctermbg=238
hi FoldColumn gui=NONE guifg=#535D66 ctermfg=241 guibg=#1f1f1f ctermbg=234
hi SignColumn gui=NONE guifg=#777777 ctermfg=243 guibg=#333333 ctermbg=236
hi ColorColumn gui=NONE guifg=NONE ctermfg=NONE guibg=#000000 ctermbg=16

hi Title gui=BOLD guifg=#c2f890 ctermfg=156 guibg=NONE ctermbg=NONE

hi Constant gui=NONE guifg=#f34648 ctermfg=203 guibg=NONE ctermbg=NONE
hi Special gui=NONE guifg=#66c547 ctermfg=77 guibg=NONE ctermbg=NONE
hi Delimiter gui=NONE guifg=#778da8 ctermfg=103 guibg=NONE ctermbg=NONE

hi String gui=NONE guifg=#66c547 ctermfg=77 guibg=NONE ctermbg=NONE
hi StringDelimiter gui=NONE guifg=#316420 ctermfg=58 guibg=NONE ctermbg=NONE

hi Identifier gui=NONE guifg=#bb84db ctermfg=140 guibg=NONE ctermbg=NONE
hi Structure gui=NONE guifg=#77a6eb ctermfg=111 guibg=NONE ctermbg=NONE
hi Function gui=NONE guifg=#fed181 ctermfg=222 guibg=NONE ctermbg=NONE
hi Statement gui=NONE guifg=#778da8 ctermfg=103 guibg=NONE ctermbg=NONE
hi PreProc gui=NONE guifg=#77a6eb ctermfg=111 guibg=NONE ctermbg=NONE

hi! link Operator Normal

hi Type gui=NONE guifg=#feae52 ctermfg=215 guibg=NONE ctermbg=NONE
hi NonText gui=NONE guifg=#666666 ctermfg=242 guibg=NONE ctermbg=NONE

hi SpecialKey gui=NONE guifg=#555555 ctermfg=240 guibg=NONE ctermbg=NONE

hi Search gui=NONE guifg=NONE ctermfg=NONE guibg=#555325 ctermbg=58
hi IncSearch gui=NONE guifg=#000000 ctermfg=221 guibg=#f2e230 ctermbg=16

hi Directory gui=NONE guifg=#fcd74a ctermfg=221 guibg=NONE ctermbg=NONE
hi ErrorMsg gui=NONE guifg=NONE ctermfg=NONE guibg=#f34648 ctermbg=203
hi! link Error ErrorMsg
hi! link MoreMsg Special
hi Question gui=NONE guifg=#c2f890 ctermfg=156 guibg=NONE ctermbg=NONE

" Spell Checking
hi SpellBad gui=UNDERLINE guifg=NONE ctermfg=NONE guibg=#f34648 ctermbg=203
hi SpellCap gui=UNDERLINE guifg=NONE ctermfg=NONE guibg=#3875d7 ctermbg=68
hi SpellRare gui=UNDERLINE guifg=NONE ctermfg=NONE guibg=#8c4eb8 ctermbg=97
hi SpellLocal gui=UNDERLINE guifg=NONE ctermfg=NONE guibg=#778da8 ctermbg=103

" Diff
hi! link diffRemoved Constant
hi! link diffAdded String

" VimDiff
hi DiffAdd gui=NONE guifg=NONE ctermfg=NONE guibg=#316420 ctermbg=58
hi DiffDelete gui=NONE guifg=NONE ctermfg=NONE guibg=#f34648 ctermbg=203
hi DiffChange gui=NONE guifg=NONE ctermfg=NONE guibg=#3875d7 ctermbg=68
hi DiffText gui=REVERSE guifg=#77a6eb ctermfg=111 guibg=#000000 ctermbg=16

" PHP
hi! link phpFunctions Function
hi StorageClass gui=NONE guifg=#feae52 ctermfg=215 guibg=NONE ctermbg=NONE
hi! link phpSuperglobal Identifier
hi! link phpQuoteSingle StringDelimiter
hi! link phpQuoteDouble StringDelimiter
hi! link phpBoolean Constant
hi! link phpNull Constant
hi! link phpArrayPair Operator

" Ruby
hi! link rubySharpBang Comment
hi rubyClass gui=NONE guifg=#3875d7 ctermfg=68 guibg=NONE ctermbg=NONE
hi rubyIdentifier gui=NONE guifg=#bb84db ctermfg=140 guibg=NONE ctermbg=NONE
hi! link rubyConstant Type
hi! link rubyFunction Function

hi rubyInstanceVariable gui=NONE guifg=#bb84db ctermfg=140 guibg=NONE ctermbg=NONE
hi rubySymbol gui=NONE guifg=#778da8 ctermfg=103 guibg=NONE ctermbg=NONE
hi! link rubyGlobalVariable rubyInstanceVariable
hi! link rubyModule rubyClass
hi rubyControl gui=NONE guifg=#778da8 ctermfg=103 guibg=NONE ctermbg=NONE

hi! link rubyString String
hi! link rubyStringDelimiter StringDelimiter
hi! link rubyInterpolationDelimiter Identifier

hi rubyRegexpDelimiter gui=NONE guifg=#44245a ctermfg=53 guibg=NONE ctermbg=NONE
hi rubyRegexp gui=NONE guifg=#e8b8fe ctermfg=183 guibg=NONE ctermbg=NONE
hi rubyRegexpSpecial gui=NONE guifg=#8c4eb8 ctermfg=97 guibg=NONE ctermbg=NONE

hi rubyPredefinedIdentifier gui=NONE guifg=#f97c6a ctermfg=209 guibg=NONE ctermbg=NONE

" JavaScript
hi! link javaScriptValue Constant
hi! link javaScriptRegexpString rubyRegexp

" CoffeeScript
hi! link coffeeRegExp javaScriptRegexpString

" Lua
hi! link luaOperator Conditional

" C
hi! link cOperator Constant

" Objective-C/Cocoa
hi! link objcClass Type
hi! link cocoaClass objcClass
hi! link objcSubclass objcClass
hi! link objcSuperclass objcClass
hi! link objcDirective rubyClass
hi! link objcStatement Constant
hi! link cocoaFunction Function
hi! link objcMethodName Identifier
hi! link objcMethodArg Normal
hi! link objcMessageName Identifier
