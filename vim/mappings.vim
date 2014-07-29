" Glen Fellows: settings for key mappings 
" Last Change:  July 29, 2014

" Key Mappings                                                      {{{1

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

" Make moving around in splits much easier
nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split  
nnoremap <C-K> <C-W><C-K> "Ctrl-k to move up a split  
nnoremap <C-L> <C-W><C-L> "Ctrl-l to move    right a split  
nnoremap <C-H> <C-W><C-H> "Ctrl-h to move left a split

" From Derek Wyatt: The following beast is something i didn't write... it will  
" return the syntax highlighting group that the current "thing" under the cursor
" belongs to -- very useful for figuring out what to change as far as 
" syntax highlighting goes.
nmap <silent> <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Leader Mappings                                                   {{{1

" Open the current file in Marked
nnoremap <leader>m :silent !open -a Marked\ 2.app '%:p'<cr>

" Reload .vimrc
map <leader>rr :source ~/.vimrc<CR>

