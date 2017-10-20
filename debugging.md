# Testing & Debugging

# Components

  Installfest is made of 4 commands:

  1. `$ install-brew`: Installs Xcode CLI Tools, Homebrew, rbenv, Node, MongoDB, Heroku CLI, and Git.

  2. `$ install-ruby`: Installs Ruby 2.4.2, RubyGems, Bundler, and Rails.

  3. `$ install-casks`: Installs Slack, Atom, Visual Studio, and PostgreSQL.

  4. `$ configure-git`: Adds general Git configuration.

  Additionally, `$ installfest` runs all of them in order.

  **NOTE** These commands aren't embedded in the bash profile. You need to run `$ source ~/.installfest` first, for bash to recognize them.


## Testing

xcode-select      xcode-select --install


## Uninstall node (if not installed via 'brew')

If you installed node without using 'brew install node', follow these instructions to uninstall that version.

1. First, uninstall the files listed in nodejs' Bill of Materials (bom):

    $ lsbom -f -l -s -pf /var/db/receipts/org.nodejs.node.pkg.bom | while read f; do  sudo rm /usr/local/${f}; done
    $ sudo rm -rf /usr/local/lib/node /usr/local/lib/node_modules /var/db/receipts/org.nodejs.*


2. Go to /usr/local/lib and delete any node and node_modules

    $ cd /usr/local/lib
    $ sudo rm -rf node*


3. Go to /usr/local/include and delete any node and node_modules directory

    $ cd /usr/local/include
    $ sudo rm -rf node*

4. Go to /usr/local/bin and delete any node executable

    $ cd /usr/local/bin
    $ sudo rm -rf /usr/local/bin/npm
    $ ls -las

5. Remove man docs

    $ sudo rm -rf /usr/local/share/man/man1/node.1

6. Remove debugging info

    $ sudo rm -rf /usr/local/lib/dtrace/node.d

8. Remove from Home dir

    $ sudo rm -rf ~/.npm

9. Check your Home directory for any "local" or "lib" or "include" folders, and delete any "node" or "node_modules" from there
10. Finally, ensure you have permissions to "/usr/local/"

    $ sudo chown -R `whoami`:staff /usr/local
