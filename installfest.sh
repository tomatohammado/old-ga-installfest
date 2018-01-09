# General Assembly DC Installfest
# Source https://git.generalassemb.ly/DC-WDI/installfest

# Bash Profile
curl https://git.generalassemb.ly/raw/DC-WDI/installfest/master/bash_profile.sh >> ~/.bash_profile

# General Aliases
alias bar="echo '****************************************************************'"
alias m-start="echo 'Starting Installfest!'"
alias m-final="echo 'Done! Thanks a lot for your patience!'"
alias reload_bash="source ~/.bash_profile"

# Homebrew, rbenv, Node, MongoDB, Heroku, Git, Python
alias m-brew="echo 'Installing Brew & Brew Packages!'"
alias i-brew1='rm -rf /usr/local/share/doc/homebrew; ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile; reload_bash'
alias i-brew2="brew update && brew upgrade && brew install rbenv node mongodb heroku git libpq python3; reload_bash"
alias i-brew3="brew link --overwrite git; brew link --overwrite node; reload_bash"
alias i-brew4="sudo mkdir -p /data/db; sudo chown -R $(whoami) /data/db"
alias install-brew="m-brew; i-brew1; i-brew2; i-brew3; i-brew4; bar"

# Ruby, RubyGems, Bundler
alias m-ruby="echo 'Installing Ruby & RubyGems'"
alias i-ruby1="rbenv install 2.5.0; rbenv init; rbenv global 2.5.0; reload_bash"
alias i-ruby2="sudo gem install rubygems-update bundler; sudo gem update --system"
alias install-ruby="m-ruby; reload_bash; i-ruby1; reload_bash; i-ruby2; bar"

# Slack, Atom, Visual Studio Code, PostgreSQL, Chrome, Rails
alias m-cask="echo 'Installing Slack, Atom, Visual Studio, and PostgreSQL'"
alias i-cask1="brew cask install slack"
alias i-cask2="brew cask install atom"
alias i-cask3="brew cask install visual-studio-code; echo 'export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin' >> ~/.bash_profile"
alias i-cask4="brew cask install postgres; echo 'export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin' >> ~/.bash_profile"
alias i-cask5="brew cask install google-chrome"
alias i-cask6="sudo gem install pkg-config rails bcrypt bindex byebug ffi puma; sudo gem install pg -- --with-pg-config=/Applications/Postgres.app/Contents/Versions/latest/bin/pg_config; reload_bash"
alias i-cask7="apm install file-icons linter-js-standard busy-signal intentions linter linter-js-standard linter-ui-default language-babel editorconfig platformio-ide-terminal"
alias i-cask8="code --install-extension chenxsan.vscode-standardjs"
alias i-cask9="npm install -g trash-cli standard nodemon"
alias install-cask="m-cask; i-cask1; i-cask2; i-cask3; i-cask4; i-cask5; i-cask6; i-cask7; i-cask8; i-cask9; bar"

# Pip
alias m-pip="echo 'Installing pip Packages!' "
alias i-pip1="sudo easy_install pip"
alias i-pip2="curl -o ~/Desktop/get-pip.py https://bootstrap.pypa.io/get-pip.py; python3 ~/Desktop/get-pip.py; rm ~/Desktop/get-pip.py"
alias i-pip3="pip3 install ipython virtualenv"
alias install-pip="m-pip; i-pip1; i-pip2; i-pip3; separator"

# git, git prompt, and global_gitignore configuration
alias m-git="echo 'Configuring Git!'"
alias i-git1="git config --global push.default simple"
alias i-git2="git config --global color.ui always"
alias i-git3="git config --global color.branch.current 'green reverse'"
alias i-git4="git config --global color.branch.local green"
alias i-git5="git config --global color.branch.remote yellow"
alias i-git6="git config --global color.status.added green"
alias i-git7="git config --global color.status.changed yellow"
alias i-git8="git config --global color.status.untracked red"
alias i-git9="git config --global core.editor 'atom --wait'"
alias i-git10="mv ~/.gitignore_global ~/.gitignore_global.bak"
alias i-git11="curl -sSL https://git.generalassemb.ly/raw/DC-WDI/installfest/master/gitignore_global -o ~/.gitignore_global"
alias i-git12="git config --global core.excludesfile ~/.gitignore_global"
alias i-git13="curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh"
alias configure-git="m-git; i-git1; i-git2; i-git3; i-git4; i-git5; i-git6; i-git7; i-git8; i-git9; i-git10; i-git11; i-git12; i-git13; i-git13; reload_bash; bar"

# Final
alias installfest="bar; m-start; bar; install-brew; install-ruby; install-cask; install-pip; configure-git; m-final; bar"

#Running
reload_bash
installfest
