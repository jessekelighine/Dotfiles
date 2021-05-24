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

# for texlive (latex)
PATH=/usr/local/texlive/2021/bin/universal-darwin:"${PATH}"

# Alias for managing (vim)-dotfiles
alias vimd='/usr/bin/git --git-dir=$HOME/VimDotfiles/ --work-tree=$HOME'
alias dotf='/usr/bin/git --git-dir=$HOME/Dotfiles/ --work-tree=$HOME'

# merge two files
mergef() {
	local ext
	[ $# -ne 2 ] && echo "Error: Need exactly two args." && return 1
	[[ ! -r $1 || ! -r $2 ]] && echo "Error: One of the files is not readable." && return 1
	if [[ ${1##*/} =~ '.' || ${2##*/} =~ '.' ]]; then
		[ ${1##*.} != ${2##*.} ] && echo "Error: Files must have same extension." && return 1
		ext=.${1##*.}
	fi
	touch tmp$ext # use empty file as the 'root' of the merge
	# cp $1 backup$ext
	git merge-file $1 tmp$ext $2 # will write to file 1
	# mv $1 merge$ext
	# mv backup$ext $1
	rm tmp$ext
	# echo "Files merged into \"merge$ext\"."
}
