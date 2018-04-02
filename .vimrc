execute pathogen#infect()
syntax on
filetype plugin indent on

" Nerdtree, Part 1
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <F6> :NERDTreeToggle<CR>

" Add bottom ribbon/status line, Part 2
set laststatus=2

set statusline=
set statusline+=\ %f  			"filename
set statusline+=\ %y  			"filetype
set statusline+=\ %p%% 			"percentage through file
set statusline+=\ %l:%c			"Line Number:Column Number

"Add mouse functionality, Part 3
"This function is crucial because if you have a file that is 1000 lines long,
"you do not want to have to hold the down cursor just to get to the bottom of
"the file. Furthermore, you can be more precise with where you are trying to
"point, which will lead to faster and more efficient coding.
set mouse=a

