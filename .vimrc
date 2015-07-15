execute pathogen#infect()
filetype plugin indent on
let g:airline_theme = 'badwolf'
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

highlight LineNr ctermfg=236
highlight VertSplit ctermfg=233
highlight NonText ctermfg=0
hi Visual ctermfg=117 ctermbg=233

set cursorline
hi CursorLine cterm=NONE ctermbg=233

let NERDTreeHighlightCursorline=0
let NERDTreeShowHidden=1
let java_highlight_all=1

let g:airline_left_sep = ' '
let g:airline_left_alt_sep = ' '
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ' '
let g:airline_symbols.branch = ' '
let g:airline_symbols.readonly = ' '
let g:airline_symbols.linenr = ' '

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

map <C-k> :wincmd k <CR> :echo '' <CR>
map <C-j> :wincmd j <CR> :echo '' <CR>
map <C-h> :wincmd h <CR> :echo '' <CR>
map <C-l> :wincmd l <CR>  :echo '' <CR>
map <C-n> :NERDTree <CR>  :echo '' <CR>

imap <C-k> :wincmd k <CR>  :echo '' <CR>
imap <C-j> :wincmd j <CR>  :echo '' <CR>
imap <C-h> :wincmd h <CR>  :echo '' <CR>
imap <C-l> :wincmd l <CR>  :echo '' <CR>
imap <C-n> :NERDTree <CR>  :echo '' <CR>

set number
set wrap
set linebreak
syntax on

set noswapfile
set showcmd
set showmatch
set hidden

set shiftwidth=3
set tabstop=3
set softtabstop=0
set noexpandtab

set laststatus=2
set autoread
set noautowrite
set lazyredraw
set showmode
set nocompatible

set smarttab
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please

set nobackup
set nowritebackup

" Colors!

hi javaFuncDef ctermfg=1
hi javaType ctermfg=1
hi javaVarArg ctermfg=3
hi javaBraces ctermfg=3
hi javaBranch ctermfg=3
hi javaConditional ctermfg=9
hi javaStorageClass ctermfg=2
hi javaString ctermfg=6
hi javaNumber ctermfg=1
hi javaComment ctermfg=2
hi javaLabel ctermfg=1
hi javaStatement ctermfg=5
hi javaOperator ctermfg=6
hi javaConstant ctermfg=5
hi javaExternal ctermfg=5
hi javaUserLabel ctermfg=5
hi javaRepeat ctermfg=5
hi javaTypedef ctermfg=6

hi NERDTreeCWD ctermfg=238
hi NERDTreeDir ctermfg=246
hi NERDTreeExecFile ctermfg=166
hi NERDTreeFile ctermfg=239
hi NERDTreePart ctermfg=239
hi NERDTreePartFile ctermfg=239
hi NERDTreeDirSlash ctermfg=246
hi NERDTreeUp ctermfg=239
hi NERDTreeOpenable ctermfg=232
hi NERDTreeClosable ctermfg=232

hi SpecialKey      term=bold ctermfg=81 guifg=Cyan
hi NonText         term=bold ctermfg=0 gui=bold guifg=Blue
hi Directory       term=bold ctermfg=159 guifg=Cyan
hi ErrorMsg        term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
hi IncSearch       term=reverse cterm=reverse gui=reverse
hi Search          term=reverse ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi MoreMsg         term=bold ctermfg=121 gui=bold guifg=SeaGreen
hi ModeMsg         term=bold cterm=bold gui=bold
hi LineNr          term=underline ctermfg=236 guifg=Yellow
hi Question        term=standout ctermfg=121 gui=bold guifg=Green
hi StatusLine      term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC    term=reverse cterm=reverse gui=reverse
hi VertSplit       term=reverse cterm=reverse ctermfg=233 gui=reverse
hi Title           term=bold ctermfg=225 gui=bold guifg=Magenta
hi Visual          term=reverse ctermfg=117 ctermbg=233 guibg=DarkGrey
hi WarningMsg      term=standout ctermfg=224 guifg=Red
hi WildMenu        term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi Folded          term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=DarkGrey
hi FoldColumn      term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
hi DiffAdd         term=bold ctermbg=4 guibg=DarkBlue
hi DiffChange      term=bold ctermbg=5 guibg=DarkMagenta
hi DiffDelete      term=bold ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
hi DiffText        term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
hi SignColumn      term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
hi SpellBad        term=reverse ctermbg=9 gui=undercurl guisp=Red
hi SpellCap        term=reverse ctermbg=12 gui=undercurl guisp=Blue
hi SpellRare       term=reverse ctermbg=13 gui=undercurl guisp=Magenta
hi SpellLocal      term=underline ctermbg=14 gui=undercurl guisp=Cyan
hi Pmenu           ctermbg=13 guibg=Magenta
hi PmenuSel        ctermbg=242 guibg=DarkGrey
hi PmenuSbar       ctermbg=248 guibg=Grey
hi PmenuThumb      cterm=reverse gui=reverse
hi TabLine         term=underline cterm=underline ctermfg=15 ctermbg=242 gui=underline guibg=DarkGrey
hi TabLineSel      term=bold cterm=bold gui=bold
hi TabLineFill     term=reverse cterm=reverse gui=reverse
hi CursorColumn    term=reverse ctermbg=242 guibg=Grey40
hi CursorLine      term=underline ctermbg=233 guibg=Grey40
hi ColorColumn     term=reverse ctermbg=1 guibg=DarkRed
hi MatchParen      term=reverse ctermbg=6 guibg=DarkCyan
hi Comment         term=bold ctermfg=238 guifg=#80a0ff
hi Constant        term=underline ctermfg=2 guifg=#ffa0a0
hi Special         term=bold ctermfg=3 guifg=Orange
hi Identifier      term=underline ctermfg=4 guifg=#40ffff
hi Statement       term=bold ctermfg=5 gui=bold guifg=#ffff60
hi PreProc         term=underline ctermfg=1 guifg=#ff80ff
hi Type            term=underline ctermfg=6 gui=bold guifg=#60ff60
hi Underlined      term=underline cterm=underline ctermfg=229 gui=underline guifg=#80a0ff
hi Ignore          ctermfg=0 guifg=bg
hi Error           term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi Todo            term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow

hi airline_x_inactive  ctermfg=235 ctermbg=238 guifg=#242321 guibg=#45413b
hi airline_x_inactive_bold  term=bold cterm=bold ctermfg=235 ctermbg=238 gui=bold guifg=#242321 guibg=#45413b
hi airline_x_inactive_red  ctermfg=196 ctermbg=238 guifg=#ff2c4b guibg=#45413b
hi airline_y_inactive  ctermfg=235 ctermbg=238 guifg=#242321 guibg=#45413b
hi airline_y_inactive_bold  term=bold cterm=bold ctermfg=235 ctermbg=238 gui=bold guifg=#242321 guibg=#45413b
hi airline_y_inactive_red  ctermfg=196 ctermbg=238 guifg=#ff2c4b guibg=#45413b
hi airline_z_inactive  ctermfg=235 ctermbg=238 guifg=#242321 guibg=#45413b
hi airline_z_inactive_bold  term=bold cterm=bold ctermfg=235 ctermbg=238 gui=bold guifg=#242321 guibg=#45413b
hi airline_z_inactive_red  ctermfg=196 ctermbg=238 guifg=#ff2c4b guibg=#45413b
hi airline_a_inactive  ctermfg=235 ctermbg=238 guifg=#242321 guibg=#45413b
hi airline_a_inactive_bold  term=bold cterm=bold ctermfg=235 ctermbg=238 gui=bold guifg=#242321 guibg=#45413b
hi airline_a_inactive_red  ctermfg=196 ctermbg=238 guifg=#ff2c4b guibg=#45413b
hi airline_b_inactive  ctermfg=235 ctermbg=238 guifg=#242321 guibg=#45413b
hi airline_b_inactive_bold  term=bold cterm=bold ctermfg=235 ctermbg=238 gui=bold guifg=#242321 guibg=#45413b
hi airline_b_inactive_red  ctermfg=196 ctermbg=238 guifg=#ff2c4b guibg=#45413b
hi airline_c_inactive  ctermfg=235 ctermbg=238 guifg=#242321 guibg=#45413b
hi airline_c_inactive_bold  term=bold cterm=bold ctermfg=235 ctermbg=238 gui=bold guifg=#242321 guibg=#45413b
hi airline_c_inactive_red  ctermfg=196 ctermbg=238 guifg=#ff2c4b guibg=#45413b
hi airline_warning_inactive  ctermfg=232 ctermbg=166 guifg=#000000 guibg=#df5f00
hi airline_warning_inactive_bold  term=bold cterm=bold ctermfg=232 ctermbg=166 gui=bold guifg=#000000 guibg=#df5f00
hi airline_warning_inactive_red  ctermfg=196 ctermbg=166 guifg=#ff2c4b guibg=#df5f00
hi airline_x       ctermfg=121 ctermbg=235 guifg=#8cffba guibg=#242321
hi airline_x_bold  term=bold cterm=bold ctermfg=121 ctermbg=235 gui=bold guifg=#8cffba guibg=#242321
hi airline_x_red   ctermfg=196 ctermbg=235 guifg=#ff2c4b guibg=#242321
hi airline_y       ctermfg=222 ctermbg=238 guifg=#f4cf86 guibg=#45413b
hi airline_y_bold  term=bold cterm=bold ctermfg=222 ctermbg=238 gui=bold guifg=#f4cf86 guibg=#45413b
hi airline_y_red   ctermfg=196 ctermbg=238 guifg=#ff2c4b guibg=#45413b
hi airline_z       ctermfg=232 ctermbg=154 guifg=#141413 guibg=#aeee00
hi airline_z_bold  term=bold cterm=bold ctermfg=232 ctermbg=154 gui=bold guifg=#141413 guibg=#aeee00
hi airline_z_red   ctermfg=196 ctermbg=154 guifg=#ff2c4b guibg=#aeee00
hi airline_a       ctermfg=232 ctermbg=154 guifg=#141413 guibg=#aeee00
hi airline_a_bold  term=bold cterm=bold ctermfg=232 ctermbg=154 gui=bold guifg=#141413 guibg=#aeee00
hi airline_a_red   ctermfg=196 ctermbg=154 guifg=#ff2c4b guibg=#aeee00
hi airline_b       ctermfg=222 ctermbg=238 guifg=#f4cf86 guibg=#45413b
hi airline_b_bold  term=bold cterm=bold ctermfg=222 ctermbg=238 gui=bold guifg=#f4cf86 guibg=#45413b
hi airline_b_red   ctermfg=196 ctermbg=238 guifg=#ff2c4b guibg=#45413b
hi airline_c       ctermfg=121 ctermbg=235 guifg=#8cffba guibg=#242321
hi airline_c_bold  term=bold cterm=bold ctermfg=121 ctermbg=235 gui=bold guifg=#8cffba guibg=#242321
hi airline_c_red   ctermfg=196 ctermbg=235 guifg=#ff2c4b guibg=#242321
hi airline_warning  ctermfg=232 ctermbg=166 guifg=#000000 guibg=#df5f00
hi airline_warning_bold  term=bold cterm=bold ctermfg=232 ctermbg=166 gui=bold guifg=#000000 guibg=#df5f00
hi airline_warning_red  ctermfg=196 ctermbg=166 guifg=#ff2c4b guibg=#df5f00
hi airline_a_to_airline_b  ctermfg=154 ctermbg=238
hi airline_b_to_airline_c  ctermfg=238 ctermbg=235
hi airline_c_to_airline_x  ctermfg=235 ctermbg=235
hi airline_x_to_airline_y  ctermfg=238 ctermbg=235
hi airline_y_to_airline_z  ctermfg=154 ctermbg=238
hi airline_c1_inactive  ctermfg=235 ctermbg=238 guifg=#242321 guibg=#45413b
