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

  Most of the software that we are installing will be discussed to greater
  detail later in the course. We are excited to answer questions and talk more
  about the hows and whys during the course.

  Today, we are simply setting things up so we can hit the ground running from
  the first day!

- The instructions below are made for macOS users. For Linux users, please
  follow the instructions [here](./installfest_linux.md) instead.

- Enter the commands in the Terminal unless otherwise noted.

- We don't recommend typing the commands manually since a single typo can make a
  command malfunction.

  - Use `CMD + C` to copy a command

  - Use `CMD + V` to paste a command

  Copy and paste **one command at a time**. Each command should be a single
  line, but if your window is narrow some lines may "wrap" and appear as
  multiple lines.

- If you're asked to enter your password, that means the password for your
  computer.

  When you type it in, Terminal won't give you any visual feedback to indicate
  you're typing things in: you won't get a black dot for each character you
  typed. That's OK: just type your password and hit enter.

- Terminal is not big on visual feedback - it usually doesn't tell you when
  something worked.

  No news is good news! If you enter a command and Terminal doesn't say anything
  about it, it probably worked fine.

  Similarly, some of the commands do not give immediate feedback so if it looks
  like something stalled give it a moment. If something didn't work, you'll get
  an error message.

- If the output of the Confirm commands are slightly different from the Expected
  Output, that is fine as long as they are similar.

### IF YOU RUN INTO AN ISSUE

1. First, verify that you've typed the given commands **letter for letter**
1. Then, check the board if any changes were made during the installfest
1. Finally, ask an instructor for help.

## Instructions

- [ ] **Open Terminal**

Open Terminal by typing "Terminal" into Spotlight (ensure you select the
Terminal app).

Open Spotlight by clicking the little magnifying glass in the top-right corner
of your screen, or hitting `CMD + Space`.

---

- [ ] **Update macOS**

Install the latest release of macOS,
[Mojave](https://itunes.apple.com/us/app/macos-mojave/id1398502828?mt=12).

If you already have Mojave but need to run an update, please do that tonight
after the installfest.

If you are on an older version of macOS, it is a good idea to update to Mojave
first.

---

- [ ] **Install Xcode**

In the Terminal, check if Xcode is installed by running:

```bash
xcode-select --version
```

If you do not see a version, then run:

```bash
xcode-select --install
```

---

- [ ] **Create .bash_profile**

```bash
# 1/2
touch ~/.bash_profile

# 2/2
source ~/.bash_profile
```

---

- [ ] **Configure \$PATH**

```bash
echo $PATH
```

Make sure `/usr/local/bin` is listed. It is ok if it is between `:` characters.

If not, run:

```bash
# 1/2
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

# 2/2
source ~/.bash_profile
```

_Confirm_

Run `echo $PATH` again and confirm `/usr/local/bin` is listed.

---

- [ ] **Install Homebrew**

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Confirm
brew --version

# Expected Output
Homebrew 2.1.1
Homebrew/homebrew-core (git revision caa74; last commit 2019-04-24)
Homebrew/homebrew-cask (git revision 4df3cd; last commit 2019-04-25)
```

---

- [ ] **Install VS Code**

```bash
brew cask install visual-studio-code

# Confirm
code .
```

---

- [ ] **Install bash-git-prompt**

```bash
# 1/2
brew install bash-git-prompt

# 2/2
code ~/.bash_profile
```

Add the following near the bottom of the `.bash_profile`:

```bash
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=0
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
```

_Confirm_

```bash
source ./bash_profile
```

The terminal should look a little different now!

---

- [ ] **Uninstall Node (if installed)**

In the Terminal, run:

```bash
node --version
```

If you get the `command not found` reply, you are good to go! You can move on to
the step.

If got any other answer,
[you need to follow these commands to uninstall Node](./uninstall_node.md)!

---

- [ ] **Install NVM**

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
```

Next, completely close out your Terminal window and reopen a new one.

_Confirm_

```bash
command -v nvm

# Expected Output
nvm
```

---

- [ ] **Install Node**

```bash
nvm install node

# Confirm
node --version

# Expected Output
v12.0.0
```

---

- [ ] **Install Pyenv**

```bash
# 1/3
brew install pyenv

# 2/3
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile

# 3/3
source ~/.bash_profile

# Confirm
pyenv --version

# Expected Output
pyenv 1.2.11
```

---

- [ ] **Install Python**

Try running:

```bash
pyenv install 3.7.3
```

If you get an error, run:

```bash
CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" pyenv install -v 3.7.3
```

Finally, run:

```bash
pyenv global 3.7.3

# Confirm
python --version

# Expected Output
Python 3.7.3

# Nice to have
pip install ipython
```

---

- [ ] **Install Pipenv**

```bash
pip install --user pipenv

# Confirm
pipenv --version

# Expected Output
pipenv, version 2018.11.26
```

If pipenv cannot be found, we need to add the directory it was installed to the
\$PATH

First, run:

```bash
python -m site --user-base
```

You will see a file location, such as `/Users/generalassembly/.local`

We want to add "bin" to the end of that path, in this case
``/Users/generalassembly/.local/bin`

Open your `.bash_profile` if it isn't open already with `code ~/.bash_profile`

Add this path to the `export Path` line, so it might look somehting like this.

```bash
export PATH=$HOME/bin:/usr/local/bin:/Users/generalassembly/.local/bin:$PATH
```

Note the `:` between different file locations in the \$PATH

_Confirm_

```bash
# 1/2
source ~/.bash_profile

# 2/2
pipenv --version

# Expected Output
pipenv, version 2018.11.26
```

**Remember** to run `source ~/.bash_profile`

---

- [ ] **Install Postgress**

```bash

# 1/2
brew cask install postgres

# 2/2
sudo mkdir -p /etc/paths.d &&
echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp
```

Next, Close the Terminal window completely and repoen a new one.

Using Spotlight (`CMD + Space`) and type "Postgres" to open the App.

If this is the first time running Postgres.app, click the "Initialize" button.
This should create the database and start the servers.

_Confirm_

```
psql

# type `\q` and hit Enter to exit
```

---

- [ ] **Install MongoDB**

```bash
# 1/3
brew install mongodb

# 2/3
sudo mkdir -p /data/db

# 3/3
sudo chown -R $(whoami) /data/db
```

_Confirm_

Open a new Terminal window with `CMD + T`

In this second window, run:

```bash
mongod
```

Then go back to the original window and run:

```
mongo

# type `exit`
```

Finally, you can go back to the second window you ran `mongod` in and enter
`CTRL + C` to exit the process. You can now close this window.

---

- [ ] **Install Heroku CLI**

```bash
brew tap heroku/brew && brew install heroku
```

---

- [ ] **Install Miscellaneous Apps via Homebrew**

```bash

# 1/2
brew install libpq

# 2/3
brew cask install postman spectacle

# if you do not already have Chrome, Slack
brew cask install google-chrome slack

# Confirm
brew leaves
```

You can use Spotlight to open the apps installed with cask by hitting
`CMD + Space`

---

- [ ] **Install Miscellaneous NPM Packages**

```bash
npm install -g npx nodemon prettier surge trash-cli

# Confirm
npm list -g --depth=0
```

---

- [ ] **Install/Update Git**

```bash
# see initial version of git installed on the system
git --version

# Expected Output
git version 2.20.1 (Apple Git-117)

# install latest version
# 1/2
brew install git

# 2/2
source ~/.bash_profile

# Confirm
git --version

# Expected Output
git version 2.21.0
```

---

- [ ] **Register for GitHub**

If you don't have a GitHub account, go to https://github.com and create an
account.

Make sure you update your profile with:

- Your Name
- A recognizable profile picture
- An e-mail address

---

- [ ] **Register for GitHub Enterprise**

Go to https://git.generalassemb.ly/ and create an account.

You should use the same name, username, profile image, and email you have used
before in creating your normal GitHub account.

```bash

# Replace "YOUR FULL NAME" with the name you would like to use
git config --global user.name "YOUR FULL NAME"


# Replace "THE_EMAIL..." with your email
git config --global user.email "THE_EMAIL_YOU_USE_FOR_GITHUB@EMAIL.COM"
```

---

- [ ] **Configure Git**

```bash
# 1/5
# Replace "YOUR FULL NAME" with the name you would like to use
git config --global user.name 'YOUR FULL NAME'

# 2/5
# Replace "THE_EMAIL..." with your email
git config --global user.email 'THE_EMAIL_YOU_USE_FOR_GITHUB@EMAIL.COM'

# 3/5
git config --global push.default simple
git config --global color.ui always
git config --global color.branch.current 'green reverse'
git config --global color.branch.local green
git config --global color.branch.remote yellow
git config --global color.status.added green
git config --global color.status.changed yellow
git config --global color.status.untracked red
git config --global core.editor 'code --wait'

# you might need to hit "Enter" one last time

# 4/5
curl -sSL https://raw.git.generalassemb.ly/DC-WDI/installfest/master/gitignore_global -o ~/.gitignore_global

# 5/5
git config --global core.excludesfile ~/.gitignore_global

# Confirm
git config --list --global

```

---

- [ ] **Add GitHub/Enterprise SSH Keys**

  [Follow these instructions](./git-ssh.md) to add GitHub SSH keys to your local
  machine!

---

- [ ] **Install Useful Chrome Extensions**

  - [ ] [JSON Viewer](https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh)
  - [ ] [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)
  - [ ] [Redux DevTools](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd)

# Congratulations 🎉

You have installed the basic applications to use as a developer, and you are
ready for SEI. We are looking forward to working with you in the next weeks!

## Electives

Check out the [Electives](./electives.md) to check out some more cool stuff 😁
