" Glen Fellows: settings for key mappings 

" Change the map leader from the \ default
let mapleader = ","

" Fix default regex behavior
nnoremap / /\v
vnoremap / /\v

" Make the F1 help key an escape key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Make ; do the same thing as :
nnoremap ; :

" Use jj to exit back to normal mode
inoremap jj <ESC>

" Use the tab key to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

