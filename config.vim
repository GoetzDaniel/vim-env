syntax enable


set backspace=indent,eol,start				        "Make backspace behave like every other editor"
let mapleader = ','						"The default leader is \, but a comma is much better"
set number							"Activates line numbers"	

"------------------------Viusals-------------------------"

colorscheme atom-dark-256





"------------------------Searching-----------------------"

"Highlight all patterns that Match the current search"
set hlsearch
"Automatically go to the next similar pattern while typing"
set incsearch





"--------------------Split-Management--------------------"

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
"------------------------Mappings------------------------"

"Opening my vimrc in a new tab"
nmap <leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal"
nmap <leader><space> :nohlsearch<cr>





"----------------------Auto-Commands---------------------"

"Automatically source the vimrc file on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
	autocmd BufWritePost ~/.vim/vim-env/config.vim source $MYVIMRC
augroup END
