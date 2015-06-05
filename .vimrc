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

let g:airline_left_sep = '['
let g:airline_left_alt_sep = '['
let g:airline_right_sep = ']'
let g:airline_right_alt_sep = ' '
let g:airline_symbols.branch = ' '
let g:airline_symbols.readonly = ' '
let g:airline_symbols.linenr = ' '

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

map <C-Up> :wincmd k <CR> :echo '' <CR>
map <C-Down> :wincmd j <CR> :echo '' <CR>
map <C-Left> :wincmd h <CR> :echo '' <CR>
map <C-Right> :wincmd l <CR>  :echo '' <CR>
map <C-n> :NERDTree <CR>  :echo '' <CR>

imap <C-Up> :wincmd k <CR>  :echo '' <CR>
imap <C-Down> :wincmd j <CR>  :echo '' <CR>
imap <C-Left> :wincmd h <CR>  :echo '' <CR>
imap <C-Right> :wincmd l <CR>  :echo '' <CR>
imap <C-n> :NERDTree <CR>  :echo '' <CR>
