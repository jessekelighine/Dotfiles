# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/jessechen/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/jessechen/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/jessechen/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/jessechen/.fzf/shell/key-bindings.zsh"

# Using highlight (http://www.andre-simon.de/doku/highlight/en/highlight.html)
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"

export FZF_CTRL_T_COMMAND='find . -type f -or -type d 2> /dev/null'

# export FZF_CTRL_T_COMMAND='rg --files --hidden 2> /dev/null'
# export FZF_CTRL_T_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!vendor/*" 2> /dev/null'
