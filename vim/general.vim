" Glen Fellows: general vim settings
" Last Change:  July 29, 2014

" Search                                                            {{{1
"-----------------------------------------------------------------------

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


" Folding                                                           {{{1
"-----------------------------------------------------------------------

" Set default fold method to markers
set foldmethod=marker


" Misc                                                              {{{1
"-----------------------------------------------------------------------

" Don't redraw while executing macros
set lazyredraw

" Prevent some security exploits
set modelines=0

" Increase the number of commands saved in history
set history=100

