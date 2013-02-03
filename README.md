# My dotfiles

Woefully basic, but will get better as I learn more. I obsess over organization and continue to refine the structure.

## Implementation

1. Move any existing files to the *dotfiles* folder:  

        $ cd ~
        $ mv .bash_profile dotfiles/bash
        $ mv .bashrc dotfiles/bash
        $ mv .gitconfig dotfiles
        $ mv .vimrc dotfiles/vim
        $ mv .zprofile dotfiles/zsh
        $ mv .zshrc dotfiles/zsh

2.  Create symbolic links for any files that were moved:
        
        $ cd ~
        $ ln -s dotfiles/bash/.bash_profile .bash_profile
        $ ln -s dotfiles/bash/.bashrc .bashrc
        $ ln -s dotfiles/.gitconfig .gitconfig
        $ ln -s dotfiles/vim/.vimrc .vimrc
        $ ln -s dotfiles/vim .vim
        $ ln -s dotfiles/zsh/.zprofile .zprofile
        $ ln -s dotfiles/zsh/.zshrc .zshrc


## Assumptions

1. A properly compiled version of [VCPROMPT](https://github.com/djl/vcprompt) for your operating system is in your $PATH.  

