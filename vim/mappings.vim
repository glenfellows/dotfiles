" Here is where I put various mappings

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

" Create a new vertical split and switch to it
nnoremap <leader>w <C-w>v<C-w>1

" Mappings for moving around in splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

