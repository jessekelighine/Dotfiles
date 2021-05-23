# ~/.zshrc

PROMPT='%B%F{196}%1~%f%b %# '

# use vim keybindings in terminal
set -o vi

# fzf settings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPTS='--layout=reverse --info=inline --extended'

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULES=ibus

# for texlive
PATH=/usr/local/texlive/2021/bin/universal-darwin:"${PATH}"

# Alias for managing (vim)-dotfiles
alias vimdotf='/usr/bin/git --git-dir=$HOME/VimDotfiles/ --work-tree=$HOME'
alias dotf='/usr/bin/git --git-dir=$HOME/Dotfiles/ --work-tree=$HOME'
