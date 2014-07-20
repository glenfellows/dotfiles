" Glen Fellows: general vim settings


"-----------------
" General settings
"-----------------

" Don't redraw while executing macros
set lazyredraw

" Prevent some security exploits
set modelines=0

" Enable fast scrolling
set ttyfast


"----------------
" Search settings 
"----------------

" All lower-case: case-insensitive. Any uppercase: case-sensitive 
set ignorecase 
set smartcase

" Highlight search results as you type
set hlsearch
set incsearch
set showmatch

" Apply substitutions globally on lines
set gdefault

