" Sync open file with NERDTre
" Call NERDTreeFind  current window contains a modifiable
" file, and we're not in vimdiff
function! mappings#nerdtree#sync_nerd_tree() abort
  sleep 1
  if &modifiable && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

