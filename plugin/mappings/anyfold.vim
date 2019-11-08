filetype plugin indent on          " required

" set foldcolumn=2                    "fold marks on gutter 0 is off, [0 ... int]

autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1
set foldlevel=3
hi Folded term=underline

let g:anyfold_fold_display = 1
" hi Folded term=NONE cterm=NONE
