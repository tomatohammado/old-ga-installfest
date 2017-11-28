curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
~/.bash_profile
echo "source ~/.git-prompt.sh" >> ~/.bash_profile
echo "source $(brew --prefix)/etc/bash_completion" >> ~/.bash_profile
echo "GIT_PS1_SHOWDIRTYSTATE=1" >> ~/.bash_profile
echo "git_prompt='$(__git_ps1)'" >> ~/.bash_profile
echo "PS1=\"\[\e[33m\]  \d \t \w$git_prompt\n\[\e[m\]\\$\"" >> ~/.bash_profile
source ~/.bash_profile
