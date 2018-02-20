# Color code
export NO_COLOR='\[\e[0m\]'
export WHITE='\[\e[1;37m\]'
export BLACK='\[\e[0;30m\]'
export BLUE='\[\e[0;34m\]'
export BOLD_BLUE='\[\e[1;34m\]'
export GREEN='\[\e[0;32m\]'
export BOLD_GREEN='\[\e[1;32m\]'
export CYAN='\[\e[0;36m\]'
export BOLD_CYAN='\[\e[1;36m\]'
export RED='\[\e[0;31m\]'
export BOLD_RED='\[\e[1;31m\]'
export PURPLE='\[\e[0;35m\]'
export BOLD_PURPLE='\[\e[1;35m\]'
export BROWN='\[\e[0;33m\]'
export YELLOW='\[\e[0;33m\]'
export BOLD_YELLOW='\[\e[1;33m\]'
export GRAY='\[\e[0;30m\]'
export BOLD_GRAY='\[\e[0;37m\]'

# Turn on color schemes
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Auto complete for git
if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Show return code from last command
PS1=$(if [ $? = 0 ]; then echo "${GREEN}✔ "; else echo "${RED}✘ "; fi)
PS1="${PS1}${GREEN}[\h]${BOLD_BLUE}\w${YELLOW}\$(parse_git_branch)${NO_COLOR} $ "

alias la='ls -a'
alias ls='ls -F --color=auto'
