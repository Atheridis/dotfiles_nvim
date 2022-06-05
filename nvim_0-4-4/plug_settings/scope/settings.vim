augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary 
    \ guifg='#00ff00'
    \ gui=underline 
    \ ctermfg=155 
    \ cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary
    \ guifg='#0ffff' 
    \ gui=underline
    \ ctermfg=81
    \ cterm=underline
augroup END
