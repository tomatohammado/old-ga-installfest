# HomeBrew Path
export PATH="/usr/local/bin:$PATH"

# Git CLI Markup
source /usr/local/etc/bash_completion.d/git-completion.bash
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
git_prompt='$(__git_ps1)'
PS1="\[\e[33m\]  \d \t \w$git_prompt\n\[\e[m\]\$ "

# VSCode
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

# PostgreSQL
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Ruby Environment - Keep this at the end of bash_profile
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
