" ==============================================================================
" vim config
" ==============================================================================


" Load additional files
" ==============================================================================

source ~/dotfiles/vim/plugins.vim
"source ~/dotfiles/vim/theme.vim


" Spelling corrections
" ==============================================================================

abbr funciton function
abbr fucntion function
abbr tempalte template
abbr fitler filter


" Options
" ==============================================================================

syntax enable

set backspace=indent,eol,start		" make backspace act like a normal editor
set number				            " show line numbers
set linespace=5				        " set pixel spacing between lines

let mapleader = ','			        " changes the default leader from`\` to `,`

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4


" Visuals
" ==============================================================================

colorscheme atom-dark
set t_CO=256					                " Use 256 colours in terminal
set guifont=Sauce_Code_Powerline_Light:h12
"set macligatures				                " Pretty symbols when available
set guioptions-=e				                " Don't use GUI tabs
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"set laststatus=2
set cursorline


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

set hlsearch
set incsearch


" Mappings
" ==============================================================================

" make it easy to edit the .vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" make it east to edit the .gvimrc file
nmap <Leader>eg :tabedit ~/.gvimrc<cr>

" edit the notes file
nmap <Leader>vh :tabedit ~/dotfiles/vim/Notes<cr>

" edit the plugins file
nmap <Leader>ep :tabedit ~/dotfiles/vim/plugins.vim<cr>

" simple search highlight removal
nmap <Leader><space> :nohlsearch<cr>

" easily move tabs 
nmap <D-Return> gt<cr>

" make NERDTree easier to toggle
nmap <D-\> :NERDTreeToggle<cr>

" CtrlP functions
nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

" search files using CTags
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



