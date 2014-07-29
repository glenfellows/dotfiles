" Glen Fellows: settings for plugins
" Last Change:  July 29, 2014

" Vundle                                                            {{{1
" ----------------------------------------------------------------------

" Turn off file-specific settings - required for Vundle
" We'll turn them back on at the end
filetype off                

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" All of your plugins must be added before the following line
call vundle#end()            " required

" turn file-specific settings back on 
filetype plugin indent on    

