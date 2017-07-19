" ==============================================================================
" vim config
" =============================================================================


syntax enable

colorscheme onedark

set backspace=indent,eol,start
set number

" GUI Vim line-height
set linespace=15

" Change `<Leader>` to `,`
let mapleader = ','

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]


" Search
" =============================================================================

set hlsearch
set incsearch


" Mappings
" =============================================================================

" Access .vimrc file quickly
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Remove search highlights
nmap <leader><space> :nohlsearch<cr>


" Auto-Command
" =============================================================================

" Reload the .vimrc file when we make changes
augroup atourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

