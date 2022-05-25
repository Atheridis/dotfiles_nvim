" Auto-install vim-plug
if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Plugin List
call plug#begin()

    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " nerdtree
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'PhilRunninger/nerdtree-visual-selection'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Surround with '(' '[' '{'
    Plug 'tpope/vim-surround'

    " Highlight for scope f and F
    Plug 'unblevable/quick-scope'

    " Mass comment / uncomment
    Plug 'tpope/vim-commentary'

    " Floaterm
    Plug 'voldikss/vim-floaterm'

    " Startify
    Plug 'mhinz/vim-startify'

    " Signify --- Git
    if has('nvim') || has('patch-8.0.902')
      Plug 'mhinz/vim-signify'
    else
      Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
    endif

    " Fugitive --- Git
    Plug 'tpope/vim-fugitive'

    " Themes
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Jinja Support
    Plug 'lepture/vim-jinja'

call plug#end()

" Coc List
let g:coc_global_extensions = [
    \ 'coc-clangd',
    \ 'coc-clang-format-style-options',
    \ 'coc-cmake',
    \ 'coc-css',
    \ 'coc-cssmodules',
    \ 'coc-diagnostic',
    \ 'coc-docker',
    \ 'coc-json',
    \ 'coc-go',
    \ 'coc-highlight',
    \ 'coc-html',
    \ 'coc-htmldjango',
    \ 'coc-html-css-support',
    \ 'coc-jedi',
    \ 'coc-json',
    \ 'coc-markdownlint',
    \ '@yaegassy/coc-nginx',
    \ 'coc-rls',
    \ 'coc-toml',
    \ 'coc-tsserver',
    \ 'coc-xml',
    \ 'coc-yaml',
\]
