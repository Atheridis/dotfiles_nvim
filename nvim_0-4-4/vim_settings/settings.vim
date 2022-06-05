syntax enable

set encoding=utf-8
set fileencoding=utf-8

set mouse=a

set shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent

set colorcolumn=88
set nowrap
set linebreak
augroup Markdown
    autocmd!
    autocmd FileType markdown set wrap
augroup END
set number relativenumber
set hidden
set nohlsearch
set guicursor=i:block

au BufEnter * set fo-=c
au BufEnter * set fo-=o

set clipboard=unnamedplus

set termguicolors

set nobackup
set nowritebackup
set updatetime=500
set shortmess+=c

augroup FileJinjaType
    autocmd!
    autocmd BufNewFile,BufRead *.html :set filetype=jinja.html
augroup END

augroup Format
    autocmd!
    autocmd BufWritePre *.html :normal mZgg=G`Z:delmarks Z
augroup END
