"---------------------Basic-settings---------------------"
syntax enable							"Enable syntax highlighting
set backspace=indent,eol,start				        "Make backspace behave like every other editor
let mapleader = ','						"The default leader is \, but a comma is much better
set number							"Activates line numbers





"------------------------Viusals-------------------------"

colorscheme atom-dark-256





"------------------------Searching-----------------------"

set hlsearch							"Highlight all patterns that Match the current search
set incsearch							"Automatically go to the next similar pattern while typing





"--------------------Split-Management--------------------"

set splitbelow							"Open new splits always below the old ones
set splitright							"Open new vertical splits always on the right side of the old ones

"Switch to the split below with ctrl+j
nmap <C-J> <C-W><C-J>
"Switch to the split above with ctrl+k
nmap <C-K> <C-W><C-K>
"Switch to the split on the left with ctrl+h
nmap <C-H> <C-W><C-H>
"Switch to the split on the right with ctrl+l
nmap <C-L> <C-W><C-L>

"expand current window, make them same size again with ctrl+w and =
nmap <C-E> :vertical res<CR>:res<CR>





"------------------------Mappings------------------------"

"Opening my vimrc in a new tab"
nmap <leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal"
nmap <leader><space> :nohlsearch<cr>





"-------------------------Plugins------------------------"

"/
"/ Ctab
"/
"Make it faster to find a Function with Ctags
nmap <Leader>f :tag<space>





"----------------------Auto-Commands---------------------"

"Automatically source the vimrc file on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
	autocmd BufWritePost ~/.vim/vim-env/config.vim source $MYVIMRC
augroup END
