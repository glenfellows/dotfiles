" Glen Fellows: configure the vim user interface
" Last Change:  July 29, 2014

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
let g:solarized_termtrans = 1
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

" Set tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4      " for autoindenting

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


" Status line                                                       {{{1
" ----------------------------------------------------------------------

" Always show the status line
set laststatus=2

" Show current position
set ruler

function! GetName()
  return expand("%:t")==''?'<none>':expand("%:t")
endfunction

function! GetCWD()
  return expand(":pwd")
endfunction

function! IsHelp()
  return &buftype=='help'?' (help) ':''
endfunction

set statusline=\ [%{GetName()}]
set statusline+=\ [%<pwd:%{getcwd()}]\ 
set statusline+=[
set statusline+=%{strlen(&fenc)?&fenc:'none'}\|
set statusline+=%{&ff}\|
set statusline+=%{strlen(&ft)?&ft:'<none>'}
set statusline+=]\ 
set statusline+=\ %{&modified?'\[+]':''}
set statusline+=%{IsHelp()}
set statusline+=%{&readonly?'\ [ro]\ ':''}
set statusline+=%=
set statusline+=\ Col:%c
set statusline+=\ Line:%l
set statusline+=/%L\ [%p%%]\ 


" Command Line                                                      {{{1
" ----------------------------------------------------------------------

" Make command line two lines high
set ch=2

" Show the current mode
set showmode

" Show information on the current command
set showcmd


" Wild Menu                                                         {{{1
" ----------------------------------------------------------------------

" Turn on the wild menu
set wildmenu

" Show list completed to the longest command
set wildmode=list:longest,full

