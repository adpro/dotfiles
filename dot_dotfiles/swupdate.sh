#!/usr/bin/env bash

# brew
echo "⬆️  Updating the formulae and Homebrew itself..."
brew update
echo "⏫ Upgrading installed formulae..."
brew upgrade
# brew cask upgrade deprecated
echo "🔼 Upgrading installed cask formulae..."
brew upgrade --cask
echo "🔄 Cleaning old formulae..."
brew cleanup
echo "🔢 Checking system for potential problems..."
brew doctor
# brew cask doctor deprecated
# brew doctor --verbose

# mac app store
echo "⏫ Upgrading Mac App Store apps..."
mas upgrade

# system
echo "⏫ List MacOS apps updates..."
sudo softwareupdate -l

# show pinned apps versions
echo "📌 Available pinned software versions:"
brew list --pinned | xargs -L1 brew info | grep "pinned" || exit 0