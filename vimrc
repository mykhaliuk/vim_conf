let mapleader="\<Space>"
let maplocalleader="\\"

" Automatic, language-dependent indentation, syntax coloring and other
" functionality.
"
" Must come *after* the `:packadd!` calls above otherwise the contents of
" package "ftdetect" directories won't be evaluated.
filetype indent plugin on
syntax on
set mouse=a		" enable mouse
set hlsearch

" <Leader>r -- Cycle through relativenumber + number, number (only), and no
" numbering (mnemonic: relative).
nnoremap <silent> <Leader>r :call wincent#mappings#leader#cycle_numbering()<CR>

set visualbell           " don't beep
set noerrorbells         " don't beep

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


packadd! vim-surround
