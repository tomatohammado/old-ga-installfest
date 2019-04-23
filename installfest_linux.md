# Installfest - on Linux!

## Before you start...

Our scripts are designed for OSX. Until they have been updated to work with
Linux, you will be ignoring the class-wide instructions and following the
instructions below.

Right now, we can only support Ubuntu 16.04 because linux is huge and diverse
and if you use anything else, you'd better know what you're doing.

After some of these changes, you may need to reload your terminal in order for
your changes to show up. Closing and opening the terminal window is a foolproof
way to do this.

## Slack

1. Download the official .deb file from
   [the slack website](https://slack.com/downloads/linux) and install it using
   ubuntu's software manager thing.

## VSCode Text Editor

1. Go to the
   [installation directions for linux](https://code.visualstudio.com/docs/setup/linux)
   and follow them.
1. If everything worked, you should be able to type `code` into your terminal
   and have vscode appear.

## Python

1. Check to see if you have python and python3 installed on your system.
   - run `which python` and `which python3`
   - Make sure that `python --version` and `python3 --version` return something
     that makes sense. `python` should be python version 2.x, and python 3
     should be 3.x
   - If these both work, you're good.
1. Do the same with `pip` and `pip3`
1. If python3 is not installed on your system, run
   `sudo apt-get install python3.6`
1. Try step 1 again.

## NodeJS

1. Check to see if you have node or npm installed on your system
   - run `which node` and `which npm`
   - run `node --version` and `npm --version`
   - You should have at least node v8 and npm v3
1. If not, follow the installation instructions from the
   [nodejs website](https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions)

## MongoDB

1. Follow the installation instructions
   [here](https://docs.mongodb.com/master/tutorial/install-mongodb-on-ubuntu/)

## PostgreSQL

1. Ubuntu should include postgreql by default. To make sure:
   - run `psql`
   - If you get a message about "database does not exist" then you're good.
   - if you still want to try to login run `psql -d postgres` and that should
     connect you to the postgres database named......postgres
1. If it doesn't for some reason, follow the instructions:
   https://www.postgresql.org/download/linux/ubuntu/

## Github

Update your [Github](https://github.com/) profile with your full name and
profile picture. This is so we know who you are!

## Authorize SEI to use your github info

[Click this link.](https://garnet.wdidc.org/github/authorize?invite_code=15636c85caab5a55954ccc2eaff1cb74)
This will register you as an active student in Garnet, our classroom management
system.
