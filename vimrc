" ==============================================================================
" vim config
" ==============================================================================

" load plugins from vundle
" ==============================================================================
source ~/dotfiles/vim/plugins.vim


" Spelling corrections
" ==============================================================================
abbr funciton function
abbr fucntion function
abbr tempalte template
abbr fitler filter


" Options
" ==============================================================================

set nocompatible	" not compatible with vi
set encoding=utf-8  " set encoding
set autoread		" detect when a file is changed


" Syntax
" ------------------------------------------------------------------------------
filetype plugin on  " Detect filetype
syntax enable       " Enable syntax highighting
"syntax on

" Setup fonts
let g:airline_powerline_fonts = 1
set guifont=Sauce\ Code\ Powerline\ Light:h11

set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if !has('gui_running')
    let g:onedark_termcolors=16
endif

set background=dark

colorscheme onedark


" Set relevant filetypes
" ------------------------------------------------------------------------------
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.md set filetype=markdown


" make backspace behave in a sane manner
" ------------------------------------------------------------------------------
set backspace=indent,eol,start


" Tab, Indents and Lines
" ------------------------------------------------------------------------------
filetype plugin indent on

" 4 spaces please
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Round indent to nearest multiple of 4
set shiftround

" No line-wrapping
set nowrap


" Interactions
" ------------------------------------------------------------------------------

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=5
set sidescrolloff=5

" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1

" Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]

" Underscores denote words
set iskeyword-=_


" Visuals
" ------------------------------------------------------------------------------
"set laststatus=2    " Show status line
set showmode        " Show what mode you’re currently in file
set showcmd         " Show what commands you’re typing
set modeline        " Allow modelines
set ruler           " Show current line and column position in
set title           " Show file title in terminal tab
set number          " Show line numbers
set cursorline      " Highlight current line
set nohlsearch      " Don’t keep results highlighted after searching...
set incsearch       " ...just highlight as we type
set ignorecase      " Ignore case when searching...
set smartcase       " ...except if we input a capital letter
set guioptions-=r   " Removes right hand scroll bar
set go-=L           " Removes left hand scroll bar


" Mouse options
" ------------------------------------------------------------------------------
if has('mouse')
    set mouse=a
""    set ttymouse=xterm2
endif


" faster redrawing
" ------------------------------------------------------------------------------
set ttyfast

" NERDTree Options
" ------------------------------------------------------------------------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" Shortcuts
" ==============================================================================

" NERDTree
" ------------------------------------------------------------------------------
map <C-\> :NERDTreeToggle<CR>

" Emmet
" ------------------------------------------------------------------------------
let g:user_emmet_leader_key='<C-:>'
