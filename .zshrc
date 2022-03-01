# ~/.zshrc

# minimal prompt
PROMPT='%B%F{196}%1~%f%b %# '

# auto change directory
setopt autocd

# use vim keybindings in terminal
set -o vi

alias la='ls -lA'
alias lad='ls -lA | grep "^d"'

# alias vim='/usr/local/bin/vim'
alias vim='/usr/local/bin/nvim'

# dotfiles git repo
alias vimd='/usr/bin/git --git-dir=$HOME/VimDotfiles/ --work-tree=$HOME'
alias dotf='/usr/bin/git --git-dir=$HOME/Dotfiles/ --work-tree=$HOME'

alias utopia='cd /Volumes/UTOPIA/'
alias utopie='cd /Volumes/UTOPIE/'

alias 'update-hosts'='zsh ~/.config/miscellaneous/update_hosts.zsh'
alias 'youtube-audio'='youtube-dl -f bestaudio -o "~/Desktop/%(creator)s-%(title)s.mp3"'
alias 'waste-time'='zsh ~/.config/miscellaneous/productivity.zsh'
alias todo='vim ~/Courses/TODO.md'
alias 'print-colors'='bash ~/.config/miscellaneous/print_colors.sh'

alias julia='/Applications/Julia-1.7.app/Contents/Resources/julia/bin/julia'

alias matlab="/Applications/MATLAB_R2021b.app/bin/matlab -nodesktop -nodisplay -nosplash"
# matlab -nodisplay -nosplash -nodesktop 2> >(grep -v CoreText) -r "run('question01.m');exit;" 
# alias 'play-list'='mpv --vo=null --video=no --no-video --term-osd-bar --no-resume-playback --shuffle'
# alias 'play-single'='mpv --loop --'

# merge pdf files.
# alias 'merge-pdf'='gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=combine.pdf -dBATCH 1.pdf 2.pdf'

# fzf settings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPTS='--layout=reverse --info=inline --extended'

# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULES=ibus

# LaTeX
PATH=/usr/local/texlive/2021/bin/universal-darwin:"${PATH}"

# Matlab
PATH=/usr/local/MATLAB/R2010b/bin/:"${PATH}"

# echo 'export HOMEBREW_GITHUB_API_TOKEN=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' >> ~/.zshrc

function timeout() { perl -e 'alarm shift; exec @ARGV' "$@"; }
