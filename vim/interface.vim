" Glen Fellows: configure the vim user interface
" Date:         July 23, 2014

" Set standard encoding
set encoding=utf8

" Set text width
set textwidth=80

" Set word wrap to work correctly
set wrap
set linebreak
set nolist    " list disables linebreak

" Set up automatic formatting
autocmd BufWinEnter,BufRead * setlocal formatoptions=qrnt1

" Ensure that there are always lines above and below cursor
set scrolloff=8

" Show the current mode
set showmode

" Show information on the current command
set showcmd

" Make command line two lines high
set ch=2

" Set default color scheme
let g:solarized_termtrans = 1
colorscheme solarized
set background=dark

" Set color scheme based on file type and maintain as we switch buffers
:autocmd BufEnter,FileType *
\   if &ft == 'markdown' 
\|      set background=light
\|  else 
\|      set background=dark
\|  endif

" Enable syntax highlighting
syntax on

" Highlight the current line
set cursorline

" Display line numbers
set number

" Use relative line numbers
set relativenumber

" Show current position
set ruler

" Use autoindent
set autoindent

" Set tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4      " for autoindenting

" Use spaces instead of tabs
set expandtab


 
" Status line  --------------------------------------------
set laststatus=2

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
" ------------------------------------------------------------------

" Allow backspacing over everything in insert mode 
set backspace=indent,eol,start

" Show matching parens and brackets 
set showmatch

" Turn off bell sound and enable visual bell
set noerrorbells
set visualbell

" Turn on the wild menu
set wildmenu

" Show list completed to the longest command
set wildmode=list:longest,full


