set nocompatible             
so ~/.vim/plugins.vim
syntax enable
set guifont=Monaco:h15
colorscheme atom-dark
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set linespace=15      
set number            

filetype indent on
set filetype=html
set smartindent

let mapleader = ','   
set splitbelow 
set splitright 
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
set hlsearch
set incsearch
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <D-1> :NERDTreeToggle<cr>
nmap <D-e> :CtrlPMRUFiles<cr>
nmap <d-p> :CtrlP<cr>

"-----------Plugins----------"
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|bower_components\|tmp\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'


augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
