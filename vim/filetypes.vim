" Glen Fellows: Settings for working with files and filetypes
" Date:         July 23, 2014

" General settings  {{{1
"------------------------------

" No backup files
set nobackup

" Save when tabbing away from vim
if has ('autocmd')
   au FocusLost * :wa
endif

" Automatically read file when it is changed outside vim
set autoread

" Hide buffers instead of closing them
set hidden

" Enable settings specific to the type of file
filetype on
filetype indent on
filetype plugin on


"-------------------------------------------------------------
" Markdown  {{{1
"-------------------------------------------------------------

autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,mdwn} set filetype=markdown

