export PATH=/usr/local/bin:$PATH

source /usr/local/etc/bash_completion.d/git-completion.bash

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=0
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi