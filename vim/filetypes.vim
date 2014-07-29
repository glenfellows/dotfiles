" Glen Fellows: Settings for working with files and filetypes
" Last Change:  July 29, 2014

" General file settings                                             {{{1
"-----------------------------------------------------------------------

" Enable settings specific to the type of file
filetype on
filetype indent on
filetype plugin on

" No backup files
set nobackup

" Save when tabbing away from vim
autocmd FocusLost * :wa

" Automatically read file when it is changed outside vim
set autoread

" Hide buffers instead of closing them; don't limit to 1 file per window/split
set hidden


" Markdown                                                          {{{1
"-----------------------------------------------------------------------

autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,mdwn} set filetype=markdown

