" Leader mappings.

" <Leader><Leader> -- Open last buffer.
nnoremap <Leader><Leader> <C-^>

" <Leader>p -- Show the path of the current file (mnemonic: path; useful when
" you have a lot of splits and the status line gets truncated).
nnoremap <Leader>p :echo expand('%')<CR>

nnoremap <silent> <LocalLeader>w :write<CR>
nnoremap <silent> <LocalLeader>x :xit<CR>
nnoremap <silent> <LocalLeader>q :q<CR>

" <LocalLeader>s -- Fix (most) syntax highlighting problems in current buffer
" (mnemonic: coloring).
nnoremap <silent> <LocalLeader>s :syntax sync fromstart<CR>

nmap <Leader>/ :Commentary <CR>
vmap <Leader>/ :Commentary <CR>

" Buffer navigation
nnoremap <Leader>. :bn<cr>
nnoremap <Leader>, :bp<cr>

nmap <Leader><cr> :nohlsearch<CR>   " :noh

nnoremap <Leader>o :only<CR>

" cycling through the cut/copy history
" nnoremap <LocalLeader>p :let @x=@" \| let @"=@a \| let @a=@b \| let @b=@x<CR>

" <Leader>r -- Cycle through relativenumber + number, number (only), and no
" numbering (mnemonic: relative).
 noremap <silent> <Leader>r :call mappings#leader#cycle_numbering()<CR>

" Copy selection to OS buffer
vnoremap <Leader>c "*y":w !pbcopy<CR><CR>

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
  \ 'dir':  '\.git$\|node_modules$\|ios$\|android$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

nnoremap <Leader>h :UndotreeToggle \| UndotreeFocus<cr>

nnoremap <Leader>a :Ack!<Space>

nnoremap <Leader>cd :lcd %:h<CR>
nnoremap <Leader>l :CocCommand prettier.formatFile<CR>

" open CWD directory
nnoremap <LocalLeader>o :e ./<CR>

" Start Markdown preview
nnoremap <LocalLeader>m :MarkdownPreview<CR>

" Fix all in Markdown
nnoremap <LocalLeader>mf :CocCommand markdownlint.fixAll<CR>
