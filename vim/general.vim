" Glen Fellows: general vim settings
" Last Change:  July 30, 2014

" Search                                                            {{{1
"-----------------------------------------------------------------------

" Ignore case when searching
set ignorecase 

" Unless the search term has capital letters
set smartcase

" Global search and replace by default
set gdefault

" Start searching as soon as text is typed
set incsearch

" Show the matching bracket when closing bracket is typed
set showmatch

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

