#!/bin/sh

# update formula
brew update
brew upgrade --all
brew cleanup

# update app
for c in `brew cask list`; do ! brew cask info $c | grep -qF "Not installed" || brew cask install $c; done

# check
brew doctor
