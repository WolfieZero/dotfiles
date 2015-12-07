" ==============================================================================
" vim plugins
" ==============================================================================

set nocompatible    " be iMproved, required
filetype off        " required


" set the runtime path to include Vundle and initialize
" ==============================================================================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here') " custom path


" let vundle manage vundle
" ==============================================================================

Plugin 'VundleVim/Vundle.vim'


" Plugins
" ==============================================================================

Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'


" Close it all off
" ==============================================================================

call vundle#end()
filetype plugin indent on
