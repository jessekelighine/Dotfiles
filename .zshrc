# ~/.zshrc

### Basic Configurations ######################################################

autoload -U colors && colors
export CLICOLOR=1
export LSCOLORS='exfxcxdxbxegedabagacad'
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
# PROMPT='%B%F{196}%1~%f%b %# '
setopt autocd
set -o vi

### Aliases ###################################################################

alias 'o'='open'
alias 'la'='ls -lAhG'
alias 'lad'='ls -lAhG | grep "^d"'
alias 'mkdir'='mkdir -pv'

# alias 'vim'='/usr/local/bin/vim'
alias 'vim'='/usr/local/bin/nvim'
alias 'macvim'='open -a macvim'

alias 'vimd'='/usr/bin/git --git-dir=$HOME/VimDotfiles/ --work-tree=$HOME'
alias 'dotf'='/usr/bin/git --git-dir=$HOME/Dotfiles/ --work-tree=$HOME'

# alias 'julia'='/Applications/Julia-1.7.app/Contents/Resources/julia/bin/julia'
alias 'matlab'="/Applications/MATLAB_R2021b.app/bin/matlab -nodesktop -nodisplay -nosplash"

alias 'todo'='vim ~/Courses/TODO.md'
alias 'update-hosts'='zsh ~/.config/miscellaneous/update_hosts.zsh'
alias 'youtube-audio'='youtube-dl -f bestaudio -o "~/Desktop/%(creator)s-%(title)s.mp3"'
alias 'waste-time'='zsh ~/.config/miscellaneous/productivity.zsh'
alias 'print-colors'='bash ~/.config/miscellaneous/print_colors.sh'
alias md5sum='md5 -r'

alias 'utopia'='cd /Volumes/UTOPIA/'
alias 'utopie'='cd /Volumes/UTOPIE/'

# alias 'play-list'='mpv --vo=null --video=no --no-video --term-osd-bar --no-resume-playback --shuffle'
# alias 'play-single'='mpv --loop'

alias tm='tmux'
alias tml='tmux ls'
alias tma='tmux attach -t'
alias tmm='tmux new -s main -n main'
alias tmk='tmux kill-session'

alias encrypt='openssl enc -aes-256-cbc -a -salt -e'
alias decrypt='openssl enc -aes-256-cbc -a -salt -d'

### FZF #######################################################################

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPTS='--layout=reverse --info=inline --extended'

### PATH ######################################################################

PATH=/usr/local/texlive/2022/bin/universal-darwin:"${PATH}"
PATH=/usr/local/MATLAB/R2010b/bin/:"${PATH}"

### Functions #################################################################

function timeout() { perl -e 'alarm shift; exec @ARGV' "$@"; }
function cwtex()   { python3 /usr/local/texlive/texmf-local/bin/cwtex51b.py $1; pdflatex $(echo $1 | sed -E 's/\.ctx$/.tex/g') }
function joinpdf() { gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=$1 "$@" }
function unmount() {
	[[ "$1" == "" ]] && {
		diskutil list external
		return -1
	}
	disk=$(diskutil list | awk 'BEGIN { last_disk="" } /^\/dev\/disk/ { last_disk=$1 } ($2 ~ /'"$1"'/) || ($3 ~ /'"$1"'/) { print last_disk; exit }')
	[[ "$disk" == "" ]] && {
		echo "Disk with this label not found!"
		return -2
	}
	diskutil eject "$disk"
}

### sdcv ######################################################################

alias dictionary='sdcv --use-dict="Longman Dictionary of Contemporary English" -c0'
alias woerterbuch='sdcv --use-dict="Duden" --use-dict="LDaF" -c0'
export STARDICT_DATA_DIR='~/.stardict'
export SDCV_PAGER='sed "s/\/\//\n/g" | less --quit-if-one-screen -RX'

### Misc ######################################################################

# matlab -nodisplay -nosplash -nodesktop 2> >(grep -v CoreText) -r "run('question01.m');exit;" 
# echo 'export HOMEBREW_GITHUB_API_TOKEN=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' >> ~/.zshrc
# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULES=ibus
