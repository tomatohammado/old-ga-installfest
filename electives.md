[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Installfest: Electives

## Install Fira Code (Font)

[How to Install](https://github.com/tonsky/FiraCode/wiki)

## Additional Homebrew Installs

```bash

brew install wget tree htop axel git-flow

brew cask install iterm2 1password alfred dropbox firefox spotify vagrant virtualbox
```

## Zsh va oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Cool Zsh plugins

- [z](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/z)
- [zsh-nvm](https://github.com/lukechilds/zsh-nvm)
- [theme: spaceship](https://github.com/denysdovhan/spaceship-prompt)

## .zshrc aliases (can adjust for bash)

```bash
alias zshconfig="code ~/.zshrc"
alias srczsh="source ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
frmtmd() { prettier --print-width 80 --prose-wrap always "$*" --write; }
```

## VS Code Extentions

```bash
# Settings Sync
code --install-extension Shan.code-settings-sync
# Prettier
code --install-extension esbenp.prettier-vscode
# Bracket Pair Colorizer 2
code --install-extension CoenraadS.bracket-pair-colorizer-2
# Gitlens
code --install-extension eamodio.gitlens
# Git Gistory
code --install-extension donjayamanne.githistory
# Import Cost
code --install-extension wix.vscode-import-cost
# Python
code --install-extension ms-python.python
# Quokka
code --install-extension WallabyJs.quokka-vscode

# Restart VS Code to finish installing these extensions
```

## Select VS Code Settings

```json
{
  "editor.tabSize": 2,
  "editor.formatOnSave": true,
  "editor.formatOnPaste": true,
  "[python]": {
    "editor.tabSize": 4
  },
  "emmet.includeLanguages": {
    "javascript": "javascriptreact"
  }
}
```
