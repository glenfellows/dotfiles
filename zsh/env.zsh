# Here is where I put my zsh environment variables

# set path
export PATH=/usr/local/bin:~/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Enable directory and file color highlighting
export CLICOLOR=1
export LSCOLORS=gxFxcxdxbxegedabagacad

# Use vim and vim key bindings
export EDITOR="vim"
bindkey -v 

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward 
