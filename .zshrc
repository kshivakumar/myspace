PROMPT="%~ # "

HISTSIZE=10000

# Ignore all duplicates in the entire command history
setopt HIST_IGNORE_ALL_DUPS

# commands are appended to the history file incrementally (as soon as they are executed), rather than waiting until the shell exits.
# It also records the starting timestamp and duration of each command
setopt INC_APPEND_HISTORY_TIME

# Command that start with a space are not added to the history file
setopt HIST_IGNORE_SPACE

# Spelling correct
setopt CORRECT

export HOMEBREW_NO_AUTO_UPDATE=1

# Disable .lesshist
export LESSHISTFILE=-

alias ls="ls --color=auto"

alias srcs="source ~/.zshrc"
alias venv="source ~/.pyenvs/venv/bin/activate"
alias ipy="venv; ipython; deactivate"
