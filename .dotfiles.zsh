#!/usr/bin/zsh
# ~/.dotfiles.zsh

alias dotf='/usr/bin/git --git-dir=$HOME/Dotfiles/ --work-tree=$HOME'

touch ~/.brew_packages_list.txt
brew leaves >> ~/.brew_packages_list.txt
dotf add ~/.brew_packages_list.txt

dotf add ~/.fzf.zsh
dotf add ~/.fzf.bash

dotf add ~/.config/alacritty
dotf add ~/.config/sc-im
dotf add ~/.config/ffmpeg
dotf add ~/.config/youtube-dl
dotf add ~/.config/zathura
dotf add ~/.config/miscellaneous/
dotf add ~/.config/mpv/
dotf add ~/.config/zathura/
dotf add ~/.config/youtube-dl/
dotf add ~/.config/mpv/

dotf add ~/.zshrc
dotf add ~/.bash_profile
dotf add ~/.gitconfig
dotf add ~/.gdrive/notes.md
dotf add ~/.Bookmarks.md

dotf add ~/.dotfiles.zsh
dotf add ~/.vimdotfiles.zsh
