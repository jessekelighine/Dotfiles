#!/usr/bin/zsh

HOSTS=/etc/hosts
UNBLOCKED=$(grep '^# # PRODUCTIVITY {{{$' $HOSTS)
MESS_1=" * Shutting down time wasting websites. Sei produktiv!"
BROWSER=Firefox
COMMAND1='call search("^\\(# \\)\\{1,2}PRODUCTIVITY {{{$", "e") | exe "norm '
COMMAND2='" | x'

function toggle_n_kill() {
	if [ -z $UNBLOCKED ]; then
		NORM='V%0o0\<C-V>I# \<Esc>'
	else
		NORM='V%0o0\<C-V>lx'
	fi
	sudo vim +${COMMAND1}$NORM${COMMAND2} $HOSTS
	killall $BROWSER 2> /dev/null
	sleep 1
	# open -a $BROWSER
}

if [[ ! -z $1 ]]; then
	if [[ -z $UNBLOCKED ]]; then
		echo "Will unblock for "$1" seconds... zzz"
		toggle_n_kill
		sleep $1
		echo $MESS_1
		toggle_n_kill
	fi
	exit 0
fi

if [ -z $UNBLOCKED ]; then
	echo ""
	echo "You are about to UNBLOCK some time wasting websites!"
	echo ""
else
	echo "\n"$MESS_1"\n"
fi

if read -q 'SURE?Press Y/y to confirm : '; then
	echo ''
	toggle_n_kill
fi
