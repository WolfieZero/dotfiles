" ==============================================================================
" vim config
" ==============================================================================

set nocompatible
filetype off

" Vundle
" ==============================================================================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" plugins
Plugin 'joshdick/onedark.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
" /plugins

call vundle#end()
filetype plugin indent on

" Settings
" ==============================================================================

colorscheme onedark

syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop=4          " Tab key indents by 4 spaces.
set shiftwidth=4           " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace=indent,eol,start  " Make backspace work as you would expect.
set number
set hidden                 " Switch between buffers without having to save first.
set laststatus=2           " Always show statusline.
set display=lastline       " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report=0               " Always report changed lines.
set synmaxcol=200          " Only highlight the first 200 columns.

" GUI Vim line-height
set linespace=15

" Change `<Leader>` to `,`
let mapleader = ','

"set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]


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

" Open NERDTree
map <C-\> :NERDTreeToggle<CR>


" Auto-Command
" =============================================================================

" Reload the .vimrc file when we make changes
augroup atourcing
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

