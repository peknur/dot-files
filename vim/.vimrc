:syntax on
filetype plugin on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
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
set number

" Symfony twig files
au BufRead,BufNewFile *.twig set filetype=html

" Python helpers
autocmd BufWritePre *.py :%s/\s\+$//e
au BufEnter *.py if getline(1) == "" | :call setline(1, "#!/usr/bin/env python") | endif
au BufEnter *.py if getline(2) == "" | :call setline(2, "# -*- coding: utf-8 -*-") | endif

" F5 checks
au BufEnter *.php map <F5> :!php -l %<CR>
au BufEnter *.go map <F5> :!gofmt -w -e -s %<CR>

autocmd FileType php set tags=project.tags;,symfony.tags;

" omni-completion <C-x><C-o> with TAB
function! InsertTabWrapper()
      let col = col('.') - 1
      if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
      else
        return "\<c-x>\<c-o>"
      endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
