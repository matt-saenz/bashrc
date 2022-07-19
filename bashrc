# Preferred prompt
# https://www.gnu.org/software/bash/manual/bash.html#Controlling-the-Prompt

green='\[\033[32m\]'
purple='\[\033[35m\]'
yellow='\[\033[33m\]'
no_color='\[\033[0m\]'
PS1="${green}\u ${purple}\h ${yellow}\w${no_color}\n\$ "


# Useful aliases
# https://www.gnu.org/software/bash/manual/bash.html#Aliases
# https://www.gnu.org/software/bash/manual/bash.html#index-alias

alias ls='ls -FG'  # macOS specific?
alias rm='rm -i'
alias mv='mv -iv'
alias cp='cp -iv'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'

alias gs='git status'
alias gd='git diff'
alias gb='git branch'
alias gch='git checkout'
alias gae='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias glo='git log --oneline'
alias gf='git fetch'
