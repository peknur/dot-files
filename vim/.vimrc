filetype plugin on
filetype plugin indent on
:syntax on
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
set autochdir

" Alias 
au BufRead,BufNewFile *.pkr.hcl set filetype=tf

" F5 checks
autocmd BufEnter *.php map <F5> :!php -l %<CR>
autocmd BufEnter *.go map <F5> :!gofmt -w -e -s %<CR>
autocmd BufEnter *.pkr.hcl map <F5> :%!packer fmt -<CR>
