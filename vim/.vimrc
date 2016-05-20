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

set term=xterm
set t_CO=256					                " Use 256 colours in terminal

if has('gui_running')
    colorscheme onedark
else
    colorscheme base16-ocean
endif

set guifont=source_code_pro_light:h12
set guioptions-=e				                " Don't use GUI tabs
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"set laststatus=2
set cursorline

hi LineNr guifg=#404040 guibg=bg

" Hide the visual split
hi vertsplit guifg=bg guibg=bg


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
nmap <Leader>vh :tabedit ~/dotfiles/vim/Notes.md<cr>

" ,ep  >>  edit the plugins file
nmap <Leader>ep :tabedit ~/dotfiles/vim/plugins.vim<cr>

" ,[space]  >>  simple search highlight removal (case when doing a search not
"               required anymore)
nmap <Leader><space> :nohlsearch<cr>

" [cmd] + [return]  >>  easily move tabs
nmap <D-Return> gt<cr>

" [cmd] + \  >>  make NERDTree easier to toggle
nmap <D-\> :NERDTreeToggle<cr>

" ,f  >>  search files using CTags
nmap <Leader>f :tag<space>


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
