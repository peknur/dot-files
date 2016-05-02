:syntax on
filetype plugin indent on
set background=dark
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set statusline+=%F
set statusline+=%=
set statusline+=%l
set statusline+=/
set statusline+=%L  
set laststatus=2

set number
set cursorline

au BufRead,BufNewFile *.twig set filetype=html
map <F5> :!php -l %<CR>
