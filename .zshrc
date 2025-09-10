HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.histfile

autoload -U compinit && compinit
bindkey -v

setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt sharehistory
unsetopt autocd

alias ll="ls -hl"
alias la="ls -hla"
alias forth="pforth"
alias usplit="urxvt &"
alias lsdisk="lsblk"
alias memory="df -hT"
alias rpn="orpie"
alias suspend="systemctl suspend"

export GCM_CREDENTIAL_STORE="gpg"
export GPG_TTY=$(tty)
export EDITOR="kak"
export PATH=$PATH:~/.cargo/bin/
export PATH=$PATH:~/dlang/tools/generated/linux/64

export HISTORY_SUBSTRING_SEARCH_PREFIXED="yes"
export HISTORY_SUBSTRING_SEARCH_FUZZY="yes"
source ~/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

unsetopt BEEP

NEWLINE=$'\n'
PROMPT="%F{198}%*%fUTC %F{214}/%m%/%f${NEWLINE}%?%F{197}%#%n%f<3 "
