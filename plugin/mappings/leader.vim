" Leader mappings.

" <Leader><Leader> -- Open last buffer.
nnoremap <Leader><Leader> <C-^>

" <Leader>p -- Show the path of the current file (mnemonic: path; useful when
" you have a lot of splits and the status line gets truncated).
nnoremap <Leader>p :echo expand('%')<CR>

nnoremap <Leader>w :write<CR>
nnoremap <Leader>x :xit<CR>
nnoremap <Leader>q :q<CR>

" <LocalLeader>c -- Fix (most) syntax highlighting problems in current buffer
" (mnemonic: coloring).
nnoremap <silent> <LocalLeader>s :syntax sync fromstart<CR>
" Leader-. to reload .vimrc

nmap <Leader>/ :Commentary <CR>
vmap <Leader>/ :Commentary <CR>

nmap <Leader>, :nohlsearch<CR>

nnoremap <Leader>o :only<CR>

" <Leader>r -- Cycle through relativenumber + number, number (only), and no
" numbering (mnemonic: relative).
nnoremap <silent> <Leader>r :call mappings#leader#cycle_numbering()<CR>

" Copy selection to OS buffer
vnoremap <Leader>c :w !pbcopy<CR><CR>

let g:ctrlp_map = ""                      " disable default mappings of CtrlP
let g:ctrlp_arg_map = 1
nnoremap  <Leader>p :CtrlP<CR>            " open Command-t like file serch
nnoremap  <Leader>b :CtrlPBuffer<CR>      " open buffers browser
nnoremap  <Leader>f :CtrlPMRU<<CR>        " open MRU like file search

let g:ctrlp_prompt_mappings = {
                        \ 'ToggleFocus()':        ['<S-tab>'],
                        \ 'PrtExpandDir()':       ['<tab>'],
                       \}
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|node_modules$',
  \ }
  " \ 'file': '\.so$\|\.dat$|\.DS_Store$'

nnoremap <Leader>h :UndotreeToggle \| UndotreeFocus<cr>

nnoremap <Leader>a :Ack! --color-match='bold blue'<Space>
