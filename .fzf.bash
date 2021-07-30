# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/jessechen/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/jessechen/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/jessechen/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/jessechen/.fzf/shell/key-bindings.bash"
