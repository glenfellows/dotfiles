" Glen Fellows: general vim settings


"----------------
" Search settings 
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
" Folding
"--------------

set foldlevel=0


"--------------
" Misc settings
"--------------

" Don't redraw while executing macros
set lazyredraw

" Prevent some security exploits
set modelines=0

" Enable fast scrolling
set ttyfast

