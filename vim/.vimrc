" Glen Fellows: the main .vimrc file that calls the rest of the settings file
" Last Change:  July 29, 2014

" Use Vim settings, rather than Vi settings
" This line must be first, because it changes other options as a side effect
set nocompatible

" Load the remaining configuration modules
source ~/dotfiles/vim/plugins.vim
source ~/dotfiles/vim/general.vim
source ~/dotfiles/vim/filetypes.vim
source ~/dotfiles/vim/mappings.vim
source ~/dotfiles/vim/interface.vim

