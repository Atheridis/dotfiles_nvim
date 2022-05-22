for f in split(glob('$HOME/.config/nvim/vim_settings/*/*.vim'), '\n')
    exe 'source' f
endfor

for f in split(glob('$HOME/.config/nvim/vim_settings/*.vim'), '\n')
    exe 'source' f
endfor

for f in split(glob('$HOME/.config/nvim/plug_settings/*/*.vim'), '\n')
    exe 'source' f
endfor

for f in split(glob('$HOME/.config/nvim/plug_settings/*.vim'), '\n')
    exe 'source' f
endfor
