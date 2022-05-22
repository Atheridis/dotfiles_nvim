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

au BufEnter * set fo-=c
au BufEnter * set fo-=o

set clipboard=unnamedplus

set termguicolors

set nobackup
set nowritebackup
set updatetime=200
set shortmess+=c
