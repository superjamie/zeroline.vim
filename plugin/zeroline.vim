if exists("g:loaded_zeroline")
    finish
endif
let g:loaded_zeroline= 1

set laststatus=2    " always show the statusline
set showmode        " show mode line ---INSERT---
" initialise to blank
set statusline=
" space, buffer number surrounded by [square braces]
set statusline+=\ [%n]
" space, filename (tail)
set statusline+=\ %t
" space, flags: modified, readonly, help, preview
set statusline+=\ %m%r%h%w
" right align
set statusline+=%=
" file format (line endings)
set statusline+=%{&ff}
" space, pipe, space, file encoding
set statusline+=\ \|\ %{''.(&fenc!=''?&fenc:&enc).''}
" space, pipe, space, filetype or "none"
set statusline+=\ \|\ %{&filetype!=#''?&filetype.'':'none'}
" space, pipe, space, min-2-width percent through file in lines
set statusline+=\ \|\ %2p%%
" space, pipe, space, min-3-width line number
set statusline+=\ \|\ %3l
" comma, min-2-character left-aligned virtual column number, space
set statusline+=:%-2v\ "

