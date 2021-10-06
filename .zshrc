# ~/.zshrc

# minimal prompt
PROMPT='%B%F{196}%1~%f%b %# '

# auto change directory
setopt autocd

# use vim keybindings in terminal
set -o vi

alias la='ls -lA'
alias vim='/usr/local/bin/vim'
alias vimd='/usr/bin/git --git-dir=$HOME/VimDotfiles/ --work-tree=$HOME'
alias dotf='/usr/bin/git --git-dir=$HOME/Dotfiles/ --work-tree=$HOME'
alias utopia='cd /Volumes/UTOPIA/'

alias 'update-hosts'='zsh ~/.config/miscellaneous/update_hosts.zsh'
alias 'youtube-audio'='youtube-dl -f bestaudio -o "~/Desktop/%(creator)s-%(title)s.mp3"'

alias 'waste-time'='zsh ~/.config/miscellaneous/productivity.zsh'

alias matlab="/Applications/MATLAB_R2021b.app/bin/matlab -nodesktop -nodisplay -nosplash"
# matlab -nodisplay -nosplash -nodesktop 2> >(grep -v CoreText) -r "run('question01.m');exit;" 

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
