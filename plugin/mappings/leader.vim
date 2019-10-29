" Leader mappings.

" <Leader><Leader> -- Open last buffer.
nnoremap <Leader><Leader> <C-^>

" <Leader>p -- Show the path of the current file (mnemonic: path; useful when
" you have a lot of splits and the status line gets truncated).
nnoremap <Leader>p :echo expand('%')<CR>

nnoremap <Leader>w :write<CR>
nnoremap <Leader>x :xit<CR>

" <LocalLeader>c -- Fix (most) syntax highlighting problems in current buffer
" (mnemonic: coloring).
nnoremap <silent> <LocalLeader>c :syntax sync fromstart<CR>
" Leader-. to reload .vimrc

nmap <Leader>/ :Commentary <CR>
vmap <Leader>/ :Commentary <CR>

nmap <Leader>, :nohlsearch<CR>

nnoremap <Leader>- :MRU<CR>

nnoremap <Leader>o :only<CR>

" <Leader>r -- Cycle through relativenumber + number, number (only), and no
" numbering (mnemonic: relative).
nnoremap <silent> <Leader>r :call mappings#leader#cycle_numbering()<CR>

nnoremap <Leader>c :w !pbcopy<CR>
