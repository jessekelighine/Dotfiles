#!/bin/zsh
# ~/.vimdotfiles.zsh
# git access token (valid from 2021-Sep-08 to 2021-Dec-06): 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
# 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

alias vimd='/usr/bin/git --git-dir=$HOME/VimDotfiles/ --work-tree=$HOME'

vimd add ~/.vim/pack/color/start/miramare/colors/miramare.vim
vimd add ~/.vim/pack/main/opt/vim-chatty/
vimd add ~/.vim/pack/main/start/vim-indent-object/
vimd add ~/.vim/pack/main/start/vim-indentwise/
vimd add ~/.vim/pack/init.sh

vimd add ~/.vim/after
vimd add ~/.vim/ftplugin
vimd add ~/.vim/syntax
vimd add ~/.vim/misc
vimd add ~/.vim/autoload

vimd add ~/.vim/spell/en.utf-8.add
vimd add ~/.vim/spell/latex.utf-8.add

vimd add ~/.vim/filetype.vim
vimd add ~/.vim/notes.md

vimd add ~/.vimrc
vimd add ~/.gvimrc

# vimd add -u
