" ==============================================================================
" vim config
" ==============================================================================


" Load additional files
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

" Make backspace act like a normal editor
set backspace=indent,eol,start

" Show line numbers
set number

" Set pixel spacing between lines
"set linespace=4

" Leader is `,`
let mapleader=','

" Leader is ` ` (space)
"let mapleader="\<Space>"

" Use Vim features, not Vi
set nocompatible

" Use good encoding etiquette
set encoding=utf-8

" Tabbing to be 4 spaces
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4


set laststatus=2


" Visuals
" ==============================================================================

" Use 24-bit (true-color) mode in Vim when outside tmux.
if (empty($TMUX))
    if (has('termguicolors'))
        set termguicolors
    endif
endif

" Enable syntax highlighting
syntax enable

" Use 256 colours in terminal
set t_CO=256

" Set colour scheme
let g:onedark_termcolors=16
colorscheme onedark

" Show file title in terminal tab
set title

" Set font face
set guifont=sauce_code_powerline_light:h12


" Don't use GUI tabs
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"set laststatus=2
set cursorline

hi LineNr guifg=#404040 guibg=bg

" Hide the visual split
hi vertsplit guifg=bg guibg=bg

" Powerline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''


" Split Management
" ==============================================================================

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


" Search
" ==============================================================================

" highlight matching search options
set hlsearch
" highlight matching search options as we type
set incsearch


" Mappings
" ==============================================================================

" ,ev  >>  make it easy to edit the .vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" ,eg  >>  make it east to edit the .gvimrc file
nmap <Leader>eg :tabedit ~/.gvimrc<cr>

" ,vh  >>  edit the notes file
nmap <Leader>vn :tabedit ~/dotfiles/vim/Notes.md<cr>

" ,ep  >>  edit the plugins file
nmap <Leader>ep :tabedit ~/dotfiles/vim/plugins.vim<cr>

" ,[space]  >>  simple search highlight removal (case when doing a search not
"               required anymore)
nmap <Leader><space> :nohlsearch<cr>

" [sapce] + ]  >>  next tab
nmap <C-l> :tabn<cr>
nmap <C-k> :tabp<cr>


" [cmd] + \  >>  make NERDTree easier to toggle
nmap <Space>\ :NERDTreeToggle<cr>

" ,f  >>  search files using CTags
nmap <Leader>f :tag<space>


nmap <Leader>n :NERDTreeTabsToggle<cr>


" CtrlP functions
" ==============================================================================

" [cmd] + p  >>  search files
nmap <D-p> :CtrlP<cr>
" [cmd] + r  >>  search current buffer
nmap <D-r> :CtrlPBufTag<cr>
" [cmd] + e  >>  view history of files
nmap <D-e> :CtrlPMRUFiles<cr>

" ,f  >>  search files using CTags
nmap <Leader>f :tag<space>


" Auto Commnads
" ==============================================================================

augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END


" CtrlP
" ==============================================================================

let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'bottom,min:1,max:30,results:10'


" NERDTree
" ==============================================================================

let NERDTreeHijackNetrw = 0
