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

" Symfony twig files
au BufRead,BufNewFile *.twig set filetype=html

" Python helpers
autocmd BufWritePre *.py :%s/\s\+$//e
au BufEnter *.py if getline(1) == "" | :call setline(1, "#!/usr/bin/env python") | endif
au BufEnter *.py if getline(2) == "" | :call setline(2, "# -*- coding: utf-8 -*-") | endif


map <F5> :!php -l %<CR>
