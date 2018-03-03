" ==============================================================================
" vim config
" ==============================================================================

syntax enable

" colorscheme desert 
" set background=dark

set backspace=indent,eol,start
let mapleader = ','

set hlsearch
set incsearch

" Use UTF-8 by default
set encoding=utf-8
set fileencoding=utf-8


" Mappings
" ==============

" Edit this file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Clear search highlighting
nmap <Leader><space> :nohlsearch<cr>

"-------------Auto-Commands--------------" 

" Automatically source the Vimrc file on save.
augroup autosourcing 
    autocmd! 
    autocmd BufWritePost .vimrc source %
augroup END
