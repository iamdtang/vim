syntax enable
colorscheme desert

let mapleader = ','   "The default character is \. changing to comma
set number            "activate line numbers"
set linespace=15      "Macvim specific line-height"

"--------Mapping---------"
set hlsearch
set incsearch

"--------Mappings---------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr> "highlight remove on ,<space>"

"--------Auto-Commands--------"
"Automatically source the .vimrc file on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
