" Cycle through relativenumber + number, number (only), and no numbering.
function! mappings#leader#cycle_numbering() abort
  if exists('+relativenumber')
    execute {
          \ '00': 'set relativenumber   | set number',
          \ '01': 'set norelativenumber | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relative numbering, just toggle numbers on and off.
    set number!
  endif
endfunction

function! mappings#leader#matchparen() abort
  " Preserve current window because {Do,No}MatchParen cycle with :windo.
  let l:currwin=winnr()
  if exists('g:loaded_matchparen')
    NoMatchParen
  else
    DoMatchParen
  endif
  execute l:currwin . 'wincmd w'
endfunction

