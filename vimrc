"Vim main config file
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

colorscheme onehalfdark
set background=dark     " set background=light " for the light version
let g:one_allow_italics = 1

let mapleader="\<Space>"
let maplocalleader="\\"

" Automatic, language-dependent indentation, syntax coloring and other
" functionality.
"
" Must come *after* the `:packadd!` calls above otherwise the contents of
" package "ftdetect" directories won't be evaluated.
filetype indent plugin on
syntax on
set mouse=a              " enable mouse
set hlsearch

set visualbell           " don't beep
set noerrorbells         " don't beep

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

if has('gui')
  " Turn off scrollbars. (Default on macOS is "egmrL").
  set guioptions-=L
  set guioptions-=R
  set guioptions-=b
  set guioptions-=l
  set guioptions-=r
endif

set showtabline=2               "Show vim tab line even if only one file is open
" let g:airline_statusline_ontop=1
let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'jsformatter'        " 'default' | 'unique_tail' | 'unique_tail_improved'
let g:airline_theme='onedark'

set wildchar=<Tab> wildmenu wildmode=full

set runtimepath^=~/.vim/bundle/ctrlp.vim       " Runtime path for ctrlp plugin

" packadd! vim-surround
" packadd! mru
" packadd! commentary
