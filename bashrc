# Preferred prompt
# https://www.gnu.org/software/bash/manual/bash.html#Controlling-the-Prompt

green='\[\033[0;32m\]'
purple='\[\033[0;35m\]'
yellow='\[\033[0;33m\]'
no_color='\[\033[0m\]'
PS1="${green}\u ${purple}\h ${yellow}\w${no_color}\n\$ "


# Useful aliases
# https://www.gnu.org/software/bash/manual/bash.html#Aliases
# https://www.gnu.org/software/bash/manual/bash.html#index-alias

# For going up (up to 5 levels)
dots=../
alias cd..="cd ${dots}"
for i in {2..5}; do
    dots=${dots}../
    alias cd..${i}="cd ${dots}"
done

alias rm='rm -i'
alias mv='mv -iv'
alias cp='cp -iv'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'

# Special treatment of ls
case "${OSTYPE}" in
    darwin*) alias ls='ls -FG';;  # macOS
    linux-gnu) alias ls='ls -F --color=auto';;
    *) echo "bashrc: Alias for ls not specified for ${OSTYPE}";;
esac

# These will inherit from above if set
alias ll='ls -l'
alias la='ls -a'
alias lal='ls -al'

# Aliases for commands like git pull/push excluded for safety
alias gs='git status --short --branch'
alias gd='git diff'
alias gb='git branch'
alias gch='git checkout'
alias ga='git add'
alias gap='git add -p'
alias gc='git commit'
alias gcm='git commit -m'
alias glo='git log --oneline'
alias gf='git fetch'
alias gfs='git fetch && git status --short --branch'
