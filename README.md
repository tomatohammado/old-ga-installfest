[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Installfest

## What is Installfest?

Here at General Assembly, we use Installfest to install a group of applications
which we consider essential for any software developer to have. We use these
applications regularly in our classes, and it's essential for all of our
students to have them.

## Things to Keep in Mind

- **IMPORTANT: THIS IS AN EXERCISE IN FOLLOWING INSTRUCTIONS**. This guide is
  _not_ a lesson.

  We will discuss the software that we are installing in greater detail later in
  the course. We are excited to answer questions and talk more about the hows
  and whys during the course, but today we are simply setting things up so we
  are prepared to learn and practice software engineering from the first day!

- The instructions below are made for macOS users. For Linux users, please
  follow the instructions [here](./installfest_linux.md) instead.

- Enter the commands in the Terminal unless otherwise noted.

- We don't recommend typing the commands manually since a single typo can make a
  command malfunction.

  - Use `CMD + C` to copy a command.

  - Use `CMD + V` to paste a command.

  Copy and paste **one command at a time**. Each command should be a single
  line, but if your window is narrow some lines may "wrap" and appear as
  multiple lines. For longer lines, make sure you copy the entire line.

- If you're asked to enter your password, that means the password for your
  computer.

  When you type it in, Terminal won't give you any visual feedback to indicate
  you're typing things in: you won't get a black dot for each character you
  typed. That's OK – just type your password and hit Enter.

- Terminal is not big on visual feedback – it usually doesn't tell you when
  something worked.

  No news is good news! If you enter a command and Terminal doesn't say, it
  probably worked fine.

  Similarly, some of the commands do not give immediate feedback so if it looks
  like something stalled give it a moment. If something didn't work, you'll get
  an error message.

- Your output could be slightly different from the Example Output. As long as
  they are similar you are good to move on to the next step.

## If You Run Into an Issue

1. First, verify that you've typed the given commands **letter for letter**.
2. Then, check the board if any changes were made during the installfest.
3. Finally, ask an instructor for help.

## Instructions 🚀

### Update macOS

For our class, you'll need the latest release of
[macOS Mojave](https://itunes.apple.com/us/app/macos-mojave/id1398502828?mt=12).

---

### Open Terminal

1. Open Spotlight by clicking the little magnifying glass in the top-right
   corner of your screen, or hitting `CMD + Space`.

2. Type "Terminal" into the Spotlight text input and select the Terminal app. A
   new Terminal window should pop up.

---

### Install Xcode

1. In the Terminal, check if Xcode is installed.

   _Run:_

   ```bash
   xcode-select --version

   # Example Output
   xcode-select version 2354.
   ```

2. If you do not see a version...

   _Run:_

   ```bash
   xcode-select --install
   ```

_Confirm:_

```bash
xcode-select --version
```

---

### Create .bash_profile

_Run:_

```bash
touch ~/.bash_profile
```

_Confirm:_

```bash
source ~/.bash_profile

# Example Output
# Nothing! if you do not get any errors that means the .bash_profile is in good shape.
```

---

### Install Homebrew

1. Check to see if you have Homebrew installed.

   _Run:_

   ```bash
   brew --version

   # Example Output – Homebrew installed
   Homebrew 2.1.6
   Homebrew/homebrew-core (git revision ef210; last commit 2019-06-19)
   Homebrew/homebrew-cask (git revision 5ad14; last commit 2019-06-19)

   # Example Output – Homebrew not installed
   -bash: brew: command not found
   ```

2. If Homebrew is installed, update it.

   _Run:_

   ```bash
   brew update; brew upgrade; brew cleanup; brew doctor
   ```

   If not, install Homebrew.

   _Run:_

   ```bash
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ```

_Confirm:_

```bash
brew --version
```

---

### Reinstall Git

_Run:_

```bash
# 1/3
# see initial version of git installed on the system
git --version

# Example Output
git version 2.20.1 (Apple Git-117)

# 2/3
# install latest version
brew install git

# 3/3
source ~/.bash_profile
```

_Confirm:_

```bash
git --version

# Example Output
git version 2.22.0
# It's different!

```

**Troubleshooting:** If you see still see the previous version, completely close
Terminal and open a new window.

---

### Install a Code Editor

We will be using Sublime Text during Installfest, and recommend using it for the
first few weeks before we move up to a more complex but powerful editor, VS
Code.

_Run:_

```bash
brew cask install sublime-text visual-studio-code
```

_Confirm:_

```bash
subl .

# Keep this window open
```

---

### Set the \$PATH

1. Open your `.bash_profile`.

   _Run:_

   ```bash
   subl ~/.bash_profile

   ```

   Assuming this is the first time you are working with the `.bash_profile`, the
   file that just opened could be entirely empty.

2. Add the following line to the very top of the `.bash_profile` and then save
   (`CMD + S`).

   _Edit `.bash_profile`:_

   ```bash
   export PATH="/usr/local/bin:$PATH"
   ```

**NOTE:** If you already have code in `.bash_profile`, that's awesome! Just make
sure there is a line that says `export PATH="<blah blah blah>"` because we will
need to add to it later.

_Confirm:_

```bash
source ~/.bash_profile
```

---

### Add Git Auto-Completion to bash

In your `.bash_profile`, add this line and save the file (`CMD + S`). This can
go right after the `export PATH="<blah blah blah>"` line we just wrote.

_Edit `.bash_profile`:_

```bash
source /usr/local/etc/bash_completion.d/git-completion.bash
```

Your `.bash_profile` should look something like this, and you can refer to the
[example `.bash_profile`](./bash_profile_example.sh) for reference throughout
installfest.

_New Changes:_

```diff
# In .bash_profile
export PATH="/usr/local/bin:$PATH"

+ source /usr/local/etc/bash_completion.d/git-completion.bash
```

_Confirm:_

```bash
source ~/.bash_profile
```

---

### Install bash-git-prompt

1. Install bash-git-prompt.

   _Run:_

   ```bash
   brew install bash-git-prompt
   ```

2. Add the following near the bottom of the `.bash_profile` and save the file
   (`CMD + S`).

   _Edit `.bash_profile`:_

   ```bash
   if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
     __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
     GIT_PROMPT_ONLY_IN_REPO=0
     source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
   fi
   ```

   _New Changes:_

   ```diff
   # In .bash_profile
   export PATH="/usr/local/bin:$PATH"

   source /usr/local/etc/bash_completion.d/git-completion.bash

   + if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
   +   __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
   +   GIT_PROMPT_ONLY_IN_REPO=0
   +   source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
   + fi
   ```

_Confirm:_

```bash
source ~/.bash_profile
```

Terminal should look a little different now! If not, then completely close
Terminal (`CMD + Q`) and reopen a new window.

---

### Uninstall Node (if installed)

1. Check if node is installed.

   _Run:_

   ```bash
   node --version

   # Expected Output – Node not installed
   -bash: node: command not found
   ```

2. If you get `command not found`, you can move on to the step.

   If got any other answer,
   [follow these steps to uninstall Node](./uninstall_node.md)!

---

### Install NVM

**Note:** Save (`CMD + S`) your `.bash_profile` before starting this step – it
will will automatically update the `.bash_profile` so we need to save the file
first to avoid file conflicts.

_Run:_

```bash
# 1/2
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# 2/2
source ~/.bash_profile
```

_New Changes:_

```diff
# In .bash_profile
export PATH="/usr/local/bin:$PATH"

source /usr/local/etc/bash_completion.d/git-completion.bash

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=0
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# There might not be an empty line between the previous code and these new lines, feel free to add it in!
+ export NVM_DIR="$HOME/.nvm"
+ [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
+ [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

```

_Confirm:_

```bash
command -v nvm

# Example Output
nvm
```

---

### Install the latest version of Node via NVM

_Run:_

```bash
nvm install node
```

_Confirm:_

```bash
# Confirm
node --version

# Example Output
v12.4.0
```

---

### Install Pyenv

**Note:** Save (`CMD + S`) your `.bash_profile` before starting this step – it
will will automatically update the `.bash_profile` so we need to save the file
first to avoid file conflicts.

_Run:_

```bash
# 1/3
brew install pyenv

# 2/3
# bash
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile

# 3/3
source ~/.bash_profile
```

_New Changes:_

```diff
# In .bash_profile
export PATH="/usr/local/bin:$PATH"

source /usr/local/etc/bash_completion.d/git-completion.bash

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=0
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# There might not be an empty line between the previous code and these new lines, feel free to add it in!
+ if command -v pyenv 1>/dev/null 2>&1; then
+   eval "$(pyenv init -)"
+ fi

```

_Confirm:_

```bash
# Confirm
pyenv --version

# Example Output
pyenv 1.2.12
```

---

### Install Python

_Run:_

```bash
# 1/3
pyenv install 3.7.3

# 2/3
pyenv global 3.7.3

# 2/3
source ~/.bash_profile
```

_Confirm:_

```
python --version

# Example Output
Python 3.7.3
```

_Optional:_

```bash
pip install ipython
```

**Troubleshooting:** Refer the the
[pyenv wiki](https://github.com/pyenv/pyenv/wiki)

---

### Install Pipenv

_Run:_

```bash
pip install --user pipenv
```

_Confirm:_

```bash
# Confirm
pipenv --version

# Example Output – Success
pipenv, version 2018.11.26

# Example Output – More work needed
-bash: pipenv: command not found
```

**Troubleshooting:**

If pipenv cannot be found, we need to add the directory it was installed to the
`$PATH`.

1. We need to find the location to add to our `$PATH`. to

   _Run:_

   ```bash
   python -m site --user-base
   ```

   This will give us a location such as...

   ```bash
   /Users/generalassembly/.local
   # Yours will be different!
   ```

2. We want to add "/bin" to the end of that `$PATH`. So in in this example, we'd
   get...

   ```diff
   - /Users/generalassembly/.local
   + /Users/generalassembly/.local/bin
   ```

3. Update your `.bash_profile` by adding this path to the
   `export PATH="<blah blah blah>"` line (generally near the top).

   The updated line could look something like...

   _Edit `.bash_profile`:_

   ```bash
   export PATH="/usr/local/bin:/Users/generalassembly/.local/bin:$PATH"
   ```

   **Note:** be mindful of the `:`s between different file locations in the
   `$PATH`

   _New Changes:_

   ```diff
   # In .bash_profile
   - export PATH="/usr/local/bin:$PATH"
   + export PATH="/usr/local/bin:/Users/generalassembly/.local/bin:$PATH"

   source /usr/local/etc/bash_completion.d/git-completion.bash

   if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
     __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
     GIT_PROMPT_ONLY_IN_REPO=0
     source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
   fi

   export NVM_DIR="$HOME/.nvm"
   [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
   [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

   ```

_Confirm:_

```bash
# 1/2
source ~/.bash_profile

# 2/2
pipenv --version

# Example Output
pipenv, version 2018.11.26
```

---

### Set up Postgres

1. Install Postgres.

   _Run:_

   ```bash
   # 1/2
   brew cask install postgres

   # 2/2
   sudo mkdir -p /etc/paths.d && echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp
   ```

2. Completely close Terminal and reopen a new window.

3. Use Spotlight (`CMD + Space`) and type "Postgres" to open the application.

   If this is the first time running Postgres.app, click the "Initialize"
   button. This will create the database and start your local server.

_Confirm:_

```bash
psql

# Example Output
psql (11.3)
Type "help" for help.

# This opens a new type of prompt in Terminal, type "\q" and then hit Enter to exit
```

---

### Install MongoDB

_Run:_

```bash
# 1/3
brew install mongodb

# 2/3
sudo mkdir -p /data/db

# 3/3
sudo chown -R $(whoami) /data/db
```

_Confirm:_

1. Open a new Terminal tab with `CMD + T`

2. In this new tab...

   _Run:_

   ```bash
   mongod

   # Example Output
   # A whooooooole lot of code
   ```

3. Go back to the original Terminal tab, then...

   _Run:_

   ```bash
   mongo

   # type "exit" and hit Enter
   ```

4. Go back to the second tab you ran `mongod`, and enter `CTRL + C` to exit the
   process. You can now close the tab.

---

### Install Heroku CLI

_Run:_

```bash
brew tap heroku/brew && brew install heroku
```

_Confirm:_

```bash
heroku -v

# Example Output
heroku/7.25.0 darwin-x64 node-v11.14.0
```

---

### Install Miscellaneous Apps via Homebrew

_Run:_

```bash
# 1/2
brew install libpq

# 2/3
brew cask install postman spectacle

# If you do not already have Chrome and/or Slack
brew cask install google-chrome slack
```

_Confirm:_

```bash
brew leaves
# this will list all of the applications installed via Homebrew
```

You can use Spotlight to open the apps installed with `brew cask` by entering
`CMD + Space` anywhere.

---

### Install Miscellaneous NPM Packages

_Run:_

```bash
npm install -g npx nodemon prettier surge trash-cli
```

_Confirm:_

```bash
npm list -g --depth=0
```

---

### Configure Git

_Run:_

```bash
# 1/5
# Replace <YOUR FULL NAME> with the name you would like to use, keep the double quotes
git config --global user.name "<YOUR_FULL_NAME>"

# 2/5
# Replace <THE_EMAIL...></THE_EMAIL...> with your email, , keep the double quotes
git config --global user.email "<THE_EMAIL_YOU_USE_FOR_GITHUB@EMAIL.COM>"

# 3/5
# You can copy/paste all of these commands at once, but you might need to hit Enter one additional time for the final command

git config --global push.default simple
git config --global color.ui always
git config --global color.branch.current 'green reverse'
git config --global color.branch.local green
git config --global color.branch.remote yellow
git config --global color.status.added green
git config --global color.status.changed yellow
git config --global color.status.untracked red
git config --global core.editor 'subl --wait'

# 4/5
curl -sSL https://raw.git.generalassemb.ly/DC-WDI/installfest/master/gitignore_global -o ~/.gitignore_global

# 5/5
git config --global core.excludesfile ~/.gitignore_global
```

_Confirm:_

```bash
git config --list --global

# Example Output
user.name=General Assembly
user.email=ga@ga.co
push.default=simple
color.ui=always
color.branch.current=green reverse
color.branch.local=green
color.branch.remote=yellow
color.status.added=green
color.status.changed=yellow
color.status.untracked=red
core.editor=subl --wait
core.excludesfile=/Users/generalassembly/.gitignore_global
```

---

### Register for GitHub

If you don't have a GitHub account, go to https://github.com and create an
account.

Make sure you update your profile with:

- Your Name
- A recognizable profile picture
- An e-mail address

---

### Register for GitHub Enterprise

Go to https://git.generalassemb.ly/ and create an account.

You should use the same name, username, profile image, and email you have used
before in creating your normal GitHub account.

---

### Add GitHub/Enterprise SSH Keys

[Follow these instructions](./git-ssh.md) to add GitHub SSH keys to your local
machine!

---

### Install Useful Chrome Extensions

- [JSON Viewer](https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh)
- [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)
- [Redux DevTools](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd)

# Congratulations 🎉

You have installed the basic applications to use as a developer, and you are
ready for SEI. We are looking forward to working with you in the next weeks!
