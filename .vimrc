" ==============================================================================
" vim config
" ==============================================================================


" Plugins
" ==============================================================================

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'tomtom/tcomment_vim'
Plug 'ctrpvim/ctrp.vim'

call plug#end()

" ==============================================================================


let mapleader = ','

" absolute width of netrw window
let g:netrw_winsize = -28

" tree-view
let g:netrw_liststyle = 3

" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'

" open file in a new tab
let g:netrw_browse_split = 3

" Plugin Options
" ==============================================================================

" tomtom/tcomment_vim
" ------------------------------------------------------------------------------

noremap <silent> <Leader>// :TComment<CR>


" Auto Commands
" ==============================================================================

" Reload the .vimrc file when we make changes
augroup atourcing
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
