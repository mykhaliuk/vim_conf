" Vim settings file
scriptencoding utf-8

set cursorline
set number                      " show line numbers in gutter
set relativenumber              " Show relative line numbers
set ai                          " Copy indent from current line when starting a new line (typing <CR> in Insert mode or when using the "o" or "O" command).
set si                          " Do smart autoindenting when starting a new line.  Works for C-like programs, but can also be used for other languages.

set tabstop=2          " softtabstop:      Fine tunes the amount of white space to be added
set softtabstop=2      " shiftwidth        Determines the amount of whitespace to add in normal mode
set shiftwidth=2       " expandtab:        When on uses space instead of tabs
set expandtab
autocmd FileType python set shiftwidth=2 tabstop=2 expandtab
set backspace=indent,eol,start

if exists('&belloff')
  set belloff=all                     " never ring the bell for any reason
endif

set laststatus=2                      " always show status line
set lazyredraw                        " don't bother updating screen during macro playback

if has('linebreak')
  set linebreak                       " wrap long lines at characters in 'breakat'
endif

set list                              " show whitespace
set listchars=nbsp:⦸                  " CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
set listchars+=tab:▷┅                 " WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7)
                                      " + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
set listchars+=extends:»              " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=precedes:«             " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=trail:•                " BULLET (U+2022, UTF-8: E2 80 A2)
set modelines=5                       " scan this many lines looking for modeline
set nojoinspaces                      " don't autoinsert two spaces after '.', '?', '!' for join command

if has('linebreak')
  let &showbreak='⤷ '                 " DOWNWARDS ARROW WITH TIP RIGHTWARDS (U+21B3, UTF-8: E2 86 B3)
endif

set smarttab                          " <tab>/<BS> indent/dedent in leading whitespace

if has('windows')
  set splitbelow                      " open horizontal splits below current window
endif

if has('vertsplit')
  set splitright                      " open vertical splits to the right of the current window
endif

if exists('&swapsync')
  set swapsync=                       " let OS sync swapfiles lazily
endif
set switchbuf=usetab                  " try to reuse windows/tabs when switching buffers

set whichwrap=b,h,l,s,<,>,[,],~       " allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries

if has('wildmenu')
  set wildmenu                        " show options as list when switching buffers etc
endif

" Set syntax highlight in .tsx files
augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

set wildmode=longest:full,full        " shell-like autocomplete to unambiguous portion

"Reolve paths in JS/TS imports
set path=.,src
set suffixesadd=.js,.jsx

function! LoadMainNodeModule(fname)
    let nodeModules = "./node_modules/"
    let packageJsonPath = nodeModules . a:fname . "/package.json"

    if filereadable(packageJsonPath)
        return nodeModules . a:fname . "/" . json_decode(join(readfile(packageJsonPath))).main
    else
        return nodeModules . a:fname
    endif
endfunction

set includeexpr=LoadMainNodeModule(v:fname)

set undodir=$HOME/.vim/.undo
set undofile
