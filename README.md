# Installfest - Bash

## What is Installfest?

  Here at General Assembly, we use Installfest to install a group of applications which we consider essential for any software developer to have. We use these applications regularly in our classes, and it's essential for all of our students to have them.

  Installfest takes between 25 minutes to 1 hour. It might take longer if your CPU or internet connection are slow. Make sure that your device is plugged into a power supply.

  **NOTE** The instructions below are made for MacOS users. For Linux users, please follow the instructions [here](./installfest_linux.md) instead.


## Using the Terminal

  Open Terminal by:

  - Typing "Terminal" into Spotlight (ensure you select the Terminal app). Open Spotlight by clicking the little magnifying glass in the top-right corner of your screen, or hitting Command + Space.

  **NOTE** Terminal is not big on visual feedback. Terminal usually doesn't tell you when something worked. No news is good news. If you enter a command and Terminal doesn't say anything about it, it probably worked fine.

  **NOTE** If you're asked to enter your password, that means the password for your computer. When you type it in, Terminal won't give you any visual feedback to indicate you're typing things in: you won't get a black dot for each character you typed. That's OK: just type your password and hit enter.

  We don't recommend typing the commands manually since a single typo can make a command malfunction.

  - Use `CMD + C` to copy a command

  - Use `CMD + V` to paste a command into Terminal

  Copy and paste **one command at a time**. Each command should be a single line, but if your window is narrow some lines may "wrap" and appear as multiple lines.

## Instructions

#### Step 1: Install MacOS High Sierra

  If you haven't already, please install [MacOS High Sierra](https://itunes.apple.com/us/app/macos-high-sierra/id1246284741?mt=12&l=en-us&ls=1). It's the latest release of MacOS, and it's significantly faster and more efficient than MacOS Yosemite and MacOS Sierra.

#### Step 2: Uninstall Node

  In your terminal, type `node --version`! If you get the `command not found` reply, you are good to go. You can move on to the step. If got any other answer, [you need to follow these commands to uninstall Node](./uninstall_node.md)!

#### Step 3: Installations

  **To start the Installing process**, Copy This command, paste it in your terminal, and hit Enter! Please, watch your terminal and provide your device password, or hit Enter only when asked to.

  ```bash
  curl -o ~/.installfest.sh https://raw.git.generalassemb.ly/DC-WDI/installfest/master/installfest.sh && source ~/.installfest.sh

  ```

#### Step 4: GitHub

  If you don't have a GitHub account, go to https://github.com and create an account.

  We use information from your GitHub account throughout our classes.

  1. Make sure you update your Profile with:

    - Your Name

    - A recognizable profile picture

    - An e-mail address

  2. Add your github username to your system configuration, by placing this command in your Terminal. Don't forget to replace "YOUR GITHUB USERNAME" with your actual GitHub username!

  ```bash
  echo "export GITHUB_USERNAME='YOUR GITHUB USERNAME'" >> ~/.bash_profile
  ```

#### Step 5: GitHub Enterprise

  You will need to create a GitHub Enterprise account as well. Go to https://git.generalassemb.ly/ and create an account. We will use this account as well throughout our classes. You should use the same name, username, profile image, and email you have used before in creating your normal GitHub account.

#### Step 6: Git Configuration

1. Personalize git

  To personalize git, you will need to copy and paste the following commands into your Terminal.

- Your Full Name:

  **NOTE** Don't forget to replace "YOUR FULL NAME" with your preferred full name!

  ```bash
  git config --global user.name  "YOUR FULL NAME"
  ```

- The email in your github profile (https://github.com):

  **NOTE** Don't forget to replace "THE_EMAIL_YOU_USE_FOR_GITHUB@EMAIL.COM" with the email address which you used when you have created your GitHub account!

  ```bash
  git config --global user.email "THE_EMAIL_YOU_USE_FOR_GITHUB@EMAIL.COM"
  ```

#### Step 7: Authorize WDI

  1. Go to [Garnet](https://ga-garnet-production.herokuapp.com/github/authorize?invite_code=2a2ed788a364e23dcc4c08b9b812d17d)

  2. Click "Authorize Application" to allow GA to access to your public information.

#### Step 8: Add GitHub SSH Keys

  [Follow these instructions](./git-ssh.md) to add GitHub SSH keys to your local machine!


## Congratulations

  You have installed the basic applications to use as a developer, and you are ready for DC WDI. We are looking forward to working with you in the next weeks!
