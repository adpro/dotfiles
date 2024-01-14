# dotfiles for MacOS with chezmoi

This `dotfiles` repository exists for setup of Macbooks. It uses [chezmoi](https://www.chezmoi.io) to manage dotfiles and [homebrew](https://brew.sh) to install tools, apps and Visual Studio Code extensions.

## Mac setup

### Old Mac

- Cancel Dropbox
    - Sign out from personal Dropbox

### New Mac

- Update OS to latest version and install Rosetta 2 also from Terminal:
    - `softwareupdate -l`
    - `sudo softwareupdate -i -a --restart --agree-to-license --verbose`
    - `sudo softwareupdate --install-rosetta`
- Install Xcode command line tools from the Terminal:
    - `xcode-select --install`
- Install Homebrew from Terminal:
    - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- Install chezmoi via Homebrew:
    - `brew install chezmoi`
- Init chezmoi repository from remote dotfiles
    - `chezmoi init --apply --verbose https://github.com/$GITHUB_USERNAME/dotfiles.git`
- Install apps via Homebrew manually from Terminal:
    - `brew bundle install --file=~/Brewfile`
- Restart computer
- Set up ssh keys. Articles about settings:
    - https://dev.to/yashsway/setting-up-multiple-ssh-profiles-to-manage-multiple-git-accounts-macos-3m7m
    - https://medium.com/@xiaolishen/use-multiple-ssh-keys-for-different-github-accounts-on-the-same-computer-7d7103ca8693
- Install JetBrains software
    - Download [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/) manually and install it.
    - Sign in to JetBrains Toolbox and install all needed apps.
- Set up Docker Desktop
    - Sign in to Docker Desktop
- Set up Visual Studio Code
    - Set settings
    - Set up launching VSCode from command line with [tutorial](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line)
- Install M365 apps
    - Sign in to https://portal.office.com
    - Go to https://portal.office.com/account/?ref=Harmony and click to `Install Office`
- Set up personal Dropbox
    - Sign in to Dropbox
    - Set up sync folders
- Install Python from pyenv
    - Use guide on [Tidy Tales - Python Setup](https://tidytales.ca/series/2023-01-24_reproducible-data-science/posts/python-setup)
