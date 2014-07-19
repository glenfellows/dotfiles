" Here is where I put my configuration for various filetypes

filetype on
filetype indent on
filetype plugin on

" Save when I tab away from vim
au FocusLost * :wa

" Markdown
au Bufread,BufNewFile *.md,*.mkdn,*.mdown,*.mdwn,*.markdown setfiletype mkd set textwidth=79 nolist

" PHP
au BufNewFile,BufRead *.php,*.phpt,*.htm,*.html set ts=2 sts=2 sw=2 expandtab
au BufNewFile,BufRead *.phpt set ft=php

" Python
au BufNewFile,BufRead *.py setlocal ts=2 sts=2 sw=2 expandtab

" Ruby
au BufRead,BufNewFile Gemfile,*.ru setfiletype ruby
