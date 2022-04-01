# ~/.zshrc

## Basic Configurations
autoload -U colors && colors
export CLICOLOR=1
export LSCOLORS='exfxcxdxbxegedabagacad'
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
# PROMPT='%B%F{196}%1~%f%b %# '
setopt autocd
set -o vi

## Aliases
alias 'la'='ls -lAhG'
alias 'lad'='ls -lAhG | grep "^d"'
alias 'mkdir'='mkdir -pv'
# alias 'vim'='/usr/local/bin/vim'
alias 'vim'='/usr/local/bin/nvim'
alias 'vimd'='/usr/bin/git --git-dir=$HOME/VimDotfiles/ --work-tree=$HOME'
alias 'dotf'='/usr/bin/git --git-dir=$HOME/Dotfiles/ --work-tree=$HOME'
alias 'utopia'='cd /Volumes/UTOPIA/'
alias 'utopie'='cd /Volumes/UTOPIE/'
alias 'julia'='/Applications/Julia-1.7.app/Contents/Resources/julia/bin/julia'
alias 'matlab'="/Applications/MATLAB_R2021b.app/bin/matlab -nodesktop -nodisplay -nosplash"
alias 'todo'='vim ~/Courses/TODO.md'
alias 'update-hosts'='zsh ~/.config/miscellaneous/update_hosts.zsh'
alias 'youtube-audio'='youtube-dl -f bestaudio -o "~/Desktop/%(creator)s-%(title)s.mp3"'
alias 'waste-time'='zsh ~/.config/miscellaneous/productivity.zsh'
alias 'print-colors'='bash ~/.config/miscellaneous/print_colors.sh'
# alias 'play-list'='mpv --vo=null --video=no --no-video --term-osd-bar --no-resume-playback --shuffle'
# alias 'play-single'='mpv --loop --'
# alias 'merge-pdf'='gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=combine.pdf -dBATCH 1.pdf 2.pdf'

## FZF Settings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPTS='--layout=reverse --info=inline --extended'

## PATH
PATH=/usr/local/texlive/2021/bin/universal-darwin:"${PATH}"
PATH=/usr/local/MATLAB/R2010b/bin/:"${PATH}"

## Functions
function timeout() { perl -e 'alarm shift; exec @ARGV' "$@"; }
function cwtex() { python3 /usr/local/texlive/texmf-local/bin/cwtex51b.py $1; pdflatex $(echo $1 | sed 's/\(.*\)\.ctx$/\1.tex/g') }

## Misc
# matlab -nodisplay -nosplash -nodesktop 2> >(grep -v CoreText) -r "run('question01.m');exit;" 
# echo 'export HOMEBREW_GITHUB_API_TOKEN=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' >> ~/.zshrc
# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULES=ibus
