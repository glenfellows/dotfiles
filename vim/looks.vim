" Here is where I configure how Vim looks

syntax enable
set cursorline
set number

" set color scheme
let g:solarized_termtrans = 1
colorscheme solarized
set background=dark

if has ('gui_running')
    set guifont=Source\ Code\ Pro\ Light:h17
endif

" windows
set winheight=5
set winminheight=5
set winwidth=84

" status line
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
