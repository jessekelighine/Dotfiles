#!/bin/zsh
# ~/.vimdotfiles.zsh

alias vimd='/usr/bin/git --git-dir=$HOME/VimDotfiles/ --work-tree=$HOME'

# get all the installed packages of latex.
tlmgr list --only-installed > ~/.vim/pack/lang/opt/tex/PACKAGES.txt

vimd add ~/.local/share/nvim
vimd add ~/.config/nvim/init.vim

vimd add ~/.vim/after
vimd add ~/.vim/autoload
vimd add ~/.vim/ftplugin
vimd add ~/.vim/misc
vimd add ~/.vim/pack
vimd add ~/.vim/snippets
vimd add ~/.vim/spell
vimd add ~/.vim/syntax

vimd add ~/.vim/filetype.vim
vimd add ~/.vim/notes.md

vimd add ~/.vimrc
vimd add ~/.gvimrc
