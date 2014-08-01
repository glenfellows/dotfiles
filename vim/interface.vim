" Glen Fellows: configure the vim user interface
" Last Change:  July 31, 2014

" General interface settings                                        {{{1
" ----------------------------------------------------------------------

" Set standard encoding
set encoding=utf8

" Set text width
set textwidth=80

" Set up automatic formatting
autocmd BufWinEnter,BufRead * setlocal formatoptions=qrnt1

" Enable syntax highlighting
syntax on
syntax enable

" Highlight the current line
set cursorline

" Allow backspacing over everything in insert mode 
set backspace=indent,eol,start

" Show matching parens and brackets 
set showmatch

" Turn off bell sound and enable visual bell
set noerrorbells
set visualbell


" Colors                                                            {{{1
" ----------------------------------------------------------------------

" Set default color scheme
colorscheme solarized
set background=dark

" Set solorized color based on file type and maintain as we switch buffers
:autocmd BufEnter,FileType *
\   if &ft == 'markdown' 
\|      set background=light
\|  else 
\|      set background=dark
\|  endif


" Tabs                                                              {{{1
" ----------------------------------------------------------------------

" Set the width of the tab character
set tabstop=4

" With expandtab on and softtabstop set to 0, tab indents 4 spaces, but 
" backspace deletes a space at a time. Setting softtabstop to the tabstop
" value will allow the backspace key to delete the 4 spaces as if they 
" were a single tab.
set softtabstop=4

" Set amount of whitespace to be used in indentation commands in normal mode
set shiftwidth=4

" Use spaces instead of tabs
set expandtab


" Line Numbers                                                      {{{1
" ----------------------------------------------------------------------

" Display line numbers
set number

" Use relative line numbers
set relativenumber


" Indenting                                                         {{{1
" ----------------------------------------------------------------------

" Automatically indent
set autoindent


" Scrolling                                                         {{{1
" ----------------------------------------------------------------------

" Ensure that there are always lines above and below cursor
set scrolloff=10

" Start scrolling when getting close to margins
set sidescrolloff=15
set sidescroll=1

" Enable fast scrolling
set ttyfast


" Word Wrap                                                         {{{1
" ----------------------------------------------------------------------

" Set word wrap to work correctly
set wrap
set linebreak
set nolist    " list disables linebreak


" Splits                                                            {{{1
" ----------------------------------------------------------------------

set splitright          " open vertical split right of current window
set splitbelow          " open horizontal split below the current window


" Tab line                                                          {{{1
" ----------------------------------------------------------------------

" Always show the tab line
"set showtabline=2

"set tabline=B:%n


" Status line                                                       {{{1
" ----------------------------------------------------------------------

" Always show the status line
set laststatus=2

" Show current position
set ruler

" Color settings for mode indicator
let g:StatusLine_color_normal   = 'guifg=#e4e4e4 guibg=#0087ff gui=NONE ctermfg=15 ctermbg=33 cterm=NONE'  
let g:StatusLine_color_insert   = 'guifg=#e4e4e4 guibg=#5f8700 gui=NONE ctermfg=15 ctermbg=64 cterm=NONE'
let g:StatusLine_color_replace  = 'guifg=#e4e4e4 guibg=#d33682 gui=NONE ctermfg=15 ctermbg=125 cterm=NONE' 
let g:StatusLine_color_visual   = 'guifg=#e4e4e4 guibg=#b58900 gui=NONE ctermfg=15 ctermbg=136 cterm=NONE'  

" Mode indicator
function! Mode()
    redraw
    let l:mode = mode()
    if     mode ==# "n"  | exec 'hi User1 '.g:StatusLine_color_normal  | return "NORMAL"
    elseif mode ==# "i"  | exec 'hi User1 '.g:StatusLine_color_insert  | return "INSERT"
    elseif mode ==# "R"  | exec 'hi User1 '.g:StatusLine_color_replace | return "REPLACE"
    elseif mode ==# "v"  | exec 'hi User1 '.g:StatusLine_color_visual  | return "VISUAL"
    else                 | return l:mode
    endif
endfunction

" Current directory
function! CurDir()
    return substitute(getcwd(), '/Users/glen/', "~/", "g")
endfunction

set statusline=%1*                              " highlight User1
set statusline+=\                               " space at the beginning
set statusline+=%{Mode()}                       " mode
set statusline+=\                               " space
set statusline+=%#PmenuSel#                     " back to normal status hilite
set statusline+=\                               " space
set statusline+=%{GitBranchInfoString()}        " Git branch info
set statusline+=\                               " space
set statusline+=%#StatusLineNC#                 " hilite 
set statusline+=\                               " space
set statusline+=%t                              " file name
set statusline+=\                               " space 
set statusline+=%*                              " normal status hilite
set statusline+=%<                              " truncation point
set statusline+=\                               " space
set statusline+=%{CurDir()}                     " the directory/folder
set statusline+=%=                              " align right
set statusline+=\ \                             " spaces
set statusline+=%m                              " file modified flag
set statusline+=%{&readonly?'\ \ ':''}         " read-only flag
set statusline+=\ [                             " spaces and left bracket
set statusline+=%{strlen(&fenc)?&fenc:'none'}   " file encoding
set statusline+=\|                              " separator
set statusline+=%{&ff}                          " file format
set statusline+=\|                              " separator
set statusline+=%{strlen(&ft)?&ft:'<none>'}     " file type
set statusline+=]\ \                            " closing bracket and spaces
set statusline+=%#StatusLineNC#                 " highlight
set statusline+=\                               " space
set statusline+=B\ %n                           " buffer number
set statusline+=\                               " space 
set statusline+=%#PmenuSel#                     " hilite
set statusline+=\                               " space 
set statusline+=C\ %c                           " cursor column
set statusline+=\                               " space 
set statusline+=%1*                             " hilite
set statusline+=\                               " space
set statusline+=\ %l/%L                        " cursor line/total lines
set statusline+=\ \                             " space and separator
set statusline+=%p%%                            " percent through file
set statusline+=\                               " space 


" Command Line                                                      {{{1
" ----------------------------------------------------------------------

" Make command line two lines high
set ch=2

" Do not show the current mode
set noshowmode

" Show information on the current command
set showcmd


" Wild Menu                                                         {{{1
" ----------------------------------------------------------------------

" Turn on the wild menu
set wildmenu

" Show list completed to the longest command
set wildmode=list:longest,full

