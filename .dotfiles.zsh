#!/usr/bin/zsh
# ~/.dotfiles.zsh

alias dotf='/usr/bin/git --git-dir=$HOME/Dotfiles/ --work-tree=$HOME'

echo "# brew packages\n" > ~/brew_packages_list.txt
brew leaves >> ~/brew_packages_list.txt
dotf add ~/brew_packages_list.txt
rm ~/brew_packages_list.txt

dotf add ~/.fzf.zsh
dotf add ~/.fzf.bash

dotf add ~/.config/alacritty
dotf add ~/.config/nvim
dotf add ~/.config/sc-im
dotf add ~/.config/ffmpeg/notes.md
dotf add ~/.config/youtube-dl/config

dotf add ~/.zshrc
dotf add ~/.bash_profile
dotf add ~/.gitconfig
dotf add ~/.gdrive/notes.md

dotf add ~/.dotfiles.zsh
dotf add ~/.vimdotfiles.zsh
