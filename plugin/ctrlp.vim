let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'ra'
" If you are using a custom finder via `ctrlp_user_command` several options, including `ctrlp_show_hidden` `ctrlp_custom_ignore` and vim's wYankRing.vimildignore patterns, are not used by CtrlP
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = "\v[\/]\.(git|idea|expo|vscode)\|android\|ios$"

