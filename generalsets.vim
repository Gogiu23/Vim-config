filetype plugin indent on
set backspace=indent,eol,start
syntax on
set history=300
set nocompatible
set wildmenu
set wildoptions=pum
set wildmode=full
set mouse=a

let g:airline_theme='oceanicnext'
set path+=**
set relativenumber
set number
set autoindent

set cursorline
set noswapfile

set splitbelow
set splitright
set complete-=i
set foldlevelstart=2
set ttyfast
set showcmd ruler laststatus=2
set scrolloff=5
let c_comment_strings=1

set hlsearch

if 1
	nohlsearch
endif

set nobackup
set encoding=utf8
set noexpandtab shiftwidth=4 tabstop=4
set include=
command! MakeTags !ctags -R .
set statusline=0
set noshowmode

let NERDTreeShowLineNumbers=1

set termguicolors
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

"Easy complete settings
let g:easycomplete_tab_trigger="<nope>"
let g:easycomplete_scheme="rider"
