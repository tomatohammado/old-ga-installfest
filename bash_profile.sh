#Brew Path
export PATH="/usr/local/bin:$PATH"

# Git CLI Markup
source /usr/local/etc/bash_completion.d/git-completion.bash
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
git_prompt='$(__git_ps1)'
PS1="\[\e[33m\]  \d \t \w$git_prompt\n\[\e[m\]\$ "

# Ruby Environment
eval "$(rbenv init -)"
