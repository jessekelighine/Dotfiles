#!/bin/zsh
# ~/.vimdotfiles.zsh

alias vimd='/usr/bin/git --git-dir=$HOME/VimDotfiles/ --work-tree=$HOME'

# get all the installed packages of latex.
tlmgr list --only-installed > ~/.config/nvim/pack/lang/opt/tex/PACKAGES.txt

vimd add ~/.local/share/nvim
vimd add ~/.config/nvim/after/
vimd add ~/.config/nvim/autoload
vimd add ~/.config/nvim/ftplugin
vimd add ~/.config/nvim/lua/
vimd add ~/.config/nvim/misc/
vimd add ~/.config/nvim/pack
vimd add ~/.config/nvim/snippets/
vimd add ~/.config/nvim/spell/
vimd add ~/.config/nvim/syntax/
vimd add ~/.config/nvim/filetype.vim
vimd add ~/.config/nvim/ginit.vim
vimd add ~/.config/nvim/init.vim
vimd add ~/.config/nvim/notes.md

vimd add ~/.vimrc
vimd add ~/.gvimrc
