"store the undo files in a seperate place
if has("persistent_undo")
  set undodir=$HOME/.vim/.undodir
  set undolevels=1000         " How many undos
  set undoreload=10000        " number of lines to save for undo
  set undofile
endif

if !exists('g:undotree_WindowLayout')
  let g:undotree_WindowLayout = 4
endif

