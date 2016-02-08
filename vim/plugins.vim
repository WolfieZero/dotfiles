" ==============================================================================
" vim plugins
" ==============================================================================

set nocompatible    " be iMproved, required
filetype off        " required


" Set the runtime path to include Vundle and initialize
" ==============================================================================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Let vundle manage vundle
" ==============================================================================

Plugin 'VundleVim/Vundle.vim'


" Plugins
" ==============================================================================

Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'


" Close it all off
" ==============================================================================

call vundle#end()		" required
filetype plugin indent on	" required
