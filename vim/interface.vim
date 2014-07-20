" Glen Fellows: configure how vim looks

" Set standard encoding
set encoding=utf8

" Set text width
set textwidth=79

" Use soft line breaks
set wrap

" Set up automatic formatting
set formatoptions=qrn1

" Ensure that there are always lines above and below cursor
set scrolloff=3

" Show the current mode
set showmode

" Show information on the current command
set showcmd

" Set color scheme
let g:solarized_termtrans = 1
colorscheme solarized
set background=dark

" Enable syntax highlighting
syntax enable

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



" Set up the status line --------------------------------------------
set laststatus=2
hi User1 ctermbg=white    ctermfg=black   guibg=#89A1A1 guifg=#002B36
hi User2 ctermbg=red      ctermfg=white   guibg=#aa0000 guifg=#89a1a1

function! GetName()
  return expand("%:t")==''?'<none>':expand("%:t")
endfunction

function! GetCWD()
  return expand(":pwd")
endfunction

function! IsHelp()
  return &buftype=='help'?' (help) ':''
endfunction

set statusline=%1*[%{GetName()}]
set statusline+=[%<pwd:%{getcwd()}]
set statusline+=%2*%{&modified?'\[+]':''}%*
set statusline+=%{IsHelp()}
set statusline+=%{&readonly?'\ (ro)\ ':''}
set statusline+=[
set statusline+=%{strlen(&fenc)?&fenc:'none'}\|
set statusline+=%{&ff}\|
set statusline+=%{strlen(&ft)?&ft:'<none>'}
set statusline+=]
set statusline+=%=
set statusline+=c%c
set statusline+=,l%l
set statusline+=/%L
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


