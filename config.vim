"---------------------Basic-settings---------------------"
syntax enable							"Enable syntax highlighting
set backspace=indent,eol,start				        "Make backspace behave like every other editor
let mapleader = ','						"The default leader is \, but a comma is much better
set number							"Activates line numbers
set noerrorbells visualbell t_vb=				"No error bells





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

"Opening my config.vim file in a new tab"
nmap <leader>ev :tabedit ~/.vim/vim-env/config.vim<cr>

"Opening my Notes and Tips file in a new tab"
nmap <leader>en :tabedit ~/.vim/vim-env/notes_and_tips.md<cr>

"Add simple highlight removal"
nmap <leader><space> :nohlsearch<cr>





"-------------------------Plugins------------------------"

"/
"/ Ctab
"/
"Make it faster to find a Function with Ctags
nmap <Leader>f :tag<space>





"----------------------git-Specific----------------------"

"Works only with Carlos git settings
nmap <leader>gs :!git st<cr>
nmap <leader>gd :!git diff<cr>
nmap <leader>gl :!git lol<cr>





"-------------------myIdeaNet-Specific-------------------"





"--------------------Laravel-Specific--------------------"

nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lm :!php artisan make:
"Activate these if CtrlP is installed and you want to use it
"nmap <Leader>lfc :CtrlP<cr>app/Http/Controllers/
"nmap <Leader>lfm :CtrlP<cr>app/
"nmap <Leader>lfv :CtrlP<cr>resources/views/

"This is the way directly taking you to the specified directory without CtrlP
nmap <Leader>lfc :e app/Http/Controllers/<cr>
nmap <Leader>lfm :e app/<cr>
nmap <Leader>lfv :e resources/views/<cr>







"----------------------Auto-Commands---------------------"

"Automatically source the vimrc file on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
	autocmd BufWritePost ~/.vim/vim-env/config.vim source $MYVIMRC
augroup END
