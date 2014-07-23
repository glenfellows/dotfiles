" Glen Fellows: general vim settings

"----------------
" Search {{{1
"----------------

" All lower-case: case-insensitive. Any uppercase: case-sensitive 
set ignorecase 
set smartcase

" Search results as you type
set incsearch
set showmatch

" Apply substitutions globally on lines
set gdefault

" Set the search scan to wrap lines
set wrapscan


"--------------
" Folding  {{{1
"--------------

" Set default fold method to markers
set foldmethod=marker



"--------------
" Misc {{{1
"--------------

" Don't redraw while executing macros
set lazyredraw

" Prevent some security exploits
set modelines=0

" Enable fast scrolling
set ttyfast

