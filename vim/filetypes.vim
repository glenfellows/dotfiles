" Glen Fellows: Settings for working with files and filetypes
" Last Change:  July 29, 2014

" General file settings                                             {{{1
"-----------------------------------------------------------------------

" Enable filetype detection
filetype on


filetype indent on
filetype plugin on

" No backup files
set nobackup

" Save when tabbing away from vim
autocmd FocusLost * :wa

" Hide buffers instead of closing them; don't limit to 1 file per window/split
set hidden

" Autoload hidden buffers on change
set autoread


" Markdown                                                          {{{1
"-----------------------------------------------------------------------
if has("autocmd")
    autocmd BufNewFile,BufRead *.{md,markdown,mdown,mkd,mkdn,mdwn} set filetype=markdown
endif

