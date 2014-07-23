" Glen Fellows: settings for key mappings 
" Date:         July 23, 2014

" Change the map leader from the \ default
let mapleader = ","

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

" Open the current file in Marked
nnoremap <leader>m :silent !open -a Marked\ 2.app '%:p'<cr>

" From Derek Wyatt: The following beast is something i didn't write... it will  
" return the syntax highlighting group that the current "thing" under the cursor
" belongs to -- very useful for figuring out what to change as far as 
" syntax highlighting goes.
nmap <silent> <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

