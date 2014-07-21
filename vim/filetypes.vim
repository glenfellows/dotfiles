" Glen Fellows: settings for working with files and filetypes

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
" Markdown
"-------------------------------------------------------------

au BufNewFile,BufRead *.md,*.markdown,*.mdown,*.mkd,*.mkdn set filetype=markdown


