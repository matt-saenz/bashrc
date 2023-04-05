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

alias ..='cd ..'
alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'

# Special treatment of ls
case "${OSTYPE}" in
    darwin*) alias ls='ls -FG';;  # macOS
    linux-gnu) alias ls='ls -F --color=auto';;
    *) echo "bashrc: Alias for ls not specified for ${OSTYPE}";;
esac

alias l='ls -al'

# Aliases for commands like git pull/push excluded for safety
alias gs='git status --short --branch'
alias gd='git diff'
alias gb='git branch'
alias gch='git checkout'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias glo='git log --oneline'
alias gf='git fetch'
alias gfs='git fetch && git status --short --branch'


# Repo setup tools

function mkreadme {
    echo "# $(basename ${PWD})" > README.md
}

function ghignore {
    wget -O .gitignore https://raw.githubusercontent.com/github/gitignore/main/${1}.gitignore
}
