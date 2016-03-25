so ~/.vim/vim-env/plugins.vim

"---------------------Basic-settings---------------------"
syntax enable						                        	"Enable syntax highlighting
set backspace=indent,eol,start	    		                    "Make backspace behave like every other editor
let mapleader = ','					                        	"The default leader is \, but a comma is much better
set number						                            	"Activates line numbers
set noerrorbells visualbell t_vb=	                			"No error bells
set nofoldenable					                        	"No folding of functions etc
"set autowriteall                                    	    	"Automatic save the file when switching buffers.
"set complete=.,w,b,u                                 	    	"Autocomplete from current file, windows and buffers.  





"----------------------Indentation-----------------------"
set tabstop=4
set shiftwidth=4
set expandtab 					                        		"Uses spaces for tabs
set softtabstop=4





"------------------------Viusals-------------------------"

colorscheme atom-dark-256





"------------------------Searching-----------------------"

set hlsearch				                        			"Highlight all patterns that Match the current search
set incsearch					                        		"Automatically go to the next similar pattern while typing





"--------------------Split-Management--------------------"

set splitbelow			                        				"Open new splits always below the old ones
set splitright					                        		"Open new vertical splits always on the right side of the old ones

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

"Opening the snippets directory
nmap <leader>es :e ~/.vim/vim-env/snippets/<cr>

"Add simple highlight removal"
nmap <leader><space> :nohlsearch<cr>





"-------------------------Plugins------------------------"

"/
"/ CtrlP
"/
"Put CtrlP to the top and order files top down
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
"Exclude some directories from ctrlp to make it faster
let g:ctrlp_custom_ignore = 'vendor\|.git\|storage\|public/attachments\|public/libs\|public/vendor\|js\|third_party\|customers'
"Don't clear the cache when close vim.
let g:ctrlp_clear_cache_on_exit=0

"Mappings
nmap <c-F> :CtrlPBufTag<cr>
nmap <c-M> :CtrlPMRUFiles<cr>

"/
"/ Ctab
"/
"Make it faster to find a Function with Ctags
nmap <Leader>f :tag<space>

"/
"/ Snipmate
"/
"Use html snippets in .php files
"au BufRead,BufNewFile *.php set ft=php.html

"/
"/ vim-php-namespace
"/
"Insert Use Statement on top of the file
function! IPhpInsertUse()
	call PhpInsertUse()
	call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>
"Expand Class inline to full Path
function! IPhpExpandClass()
	call PhpExpandClass()
	call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>
"Sort use statements alphabetically
autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

"/
"/ StanAngeloff-php
"/
"Change the display color of @ and $ lines in php documentation
function! PhpSyntaxOverride()
	hi! def link phpDocTags  phpDefine
	hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
	autocmd!
	autocmd FileType php call PhpSyntaxOverride()
augroup END

"/
"/ vim-php-cs-fixer
"/
let g:php_cs_fixer_level = "psr2"
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

"/
"/ php-Documentor
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>


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
	autocmd BufWritePost ~/.vim/vim-env/plugins.vim source $MYVIMRC
augroup END
