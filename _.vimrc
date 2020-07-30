"
" Configuration for VI and GVIM
"

syntax on
set tabpagemax=100
set hlsearch
set autoindent
set cindent
set shiftwidth=4
set tabstop=4
set fileencoding=utf8
" Do not append \n at EOF (important at binary files!)
set nofixendofline
" disable uncompressing of *.gz, *.bz2, etc
let loaded_gzip = 1
" disable displaying of contents of *.tar file
let g:loaded_tarPlugin = 1
let g:loaded_tar       = 1

" enable spell check
set spell spelllang=en_us

" Make Vim jump to the last position when reopening a file
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
