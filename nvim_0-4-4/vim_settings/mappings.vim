" Autocomplete navigation
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
inoremap <expr> <c-l> ("\<Esc>a")

" Buffer navigation
nnoremap J :bprevious<CR>
nnoremap K :bnext<CR>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt +hjkl to resize windows
nnoremap <M-H> :vertical resize -2<CR>
nnoremap <M-J> :resize -2<CR>
nnoremap <M-K> :resize +2<CR>
nnoremap <M-L> :vertical resize +2<CR>

" Remap escape
inoremap jkl <Esc>
inoremap JKL <Esc>

" Tab changes buffer
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Sane Y default
nnoremap Y y$

" add a semicolon
inoremap <M-;> <Esc>A;
nnoremap <M-;> A;<Esc>

" add a comma
inoremap <M-,> <Esc>A,
nnoremap <M-,> A,<Esc>

" add 3 `
inoremap <M-`> ```

" add brackets
inoremap <M-9> <Esc>A()<Left>
nnoremap <M-9> A()<Left>

inoremap <M-[> <Esc>A[]<Left>
nnoremap <M-[> A[]<Left>

inoremap <C-M-[> <Esc>A{}<Left>
nnoremap <C-M-[> A{}<Left>

" Move while in insert mode
inoremap <M-h> <Left>
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-l> <Right>

inoremap <C-M-h> <C-Left>
inoremap <C-M-j> <C-Down>
inoremap <C-M-k> <C-Up>
inoremap <C-M-l> <C-Right>

" Re-source vim
nnoremap <M-CR> :source ~/.config/nvim/init.vim<CR>
