# Here is where I put my zsh configuration settings

autoload -U colors && colors

# set auto cd
setopt AUTO_CD

# set prompt
setopt prompt_subst
PROMPT='
%{$fg[blue]%}%n@%m: %{$fg[cyan]%}%~ %{$fg[yellow]%}$(vcprompt -f "[%b%m%u]")
%{$reset_color%}$ '

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
