# Run this script by running:   curl -o ~/prompt https://git.generalassemb.ly/raw/DC-WDI/installfest/master/add-prompt.sh && source ~/add-prompt.sh

curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

echo '#Git CLI Markup' >> ~/.bash_profile
echo 'source ~/.git-prompt.sh' >> ~/.bash_profile
echo 'source ~/.git-completion.bash' >> ~/.bash_profile
echo 'GIT_PS1_SHOWDIRTYSTATE=1' >> ~/.bash_profile
echo 'git_prompt="$(__git_ps1)"' >> ~/.bash_profile
echo 'PS1="\[\e[33m\]  \d \t \w$git_prompt\n\[\e[m\]\$ "' >> ~/.bash_profile

source ~/.bash_profile
