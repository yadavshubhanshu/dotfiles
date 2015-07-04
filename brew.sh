#!/bin/bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Tap packages
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap caskroom/cask
brew install brew-cask

# Install GNU core utilities.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

brew install moreutils
brew install findutils --with-default-names
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
brew install bash-completion2
brew install wget --with-iri
brew install ed --default-names
brew install findutils --with-default-names
brew install gawk
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install gnutls
brew install grep --with-default-names
brew install gzip
brew install screen
brew install watch
brew install wdiff --with-gettext

# Installing jenv
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(jenv init -)"' >> ~/.bash_profile
brew cask install java
brew cask install java7

# Remove outdated versions from the cellar.
brew cleanup

# Installing pip
sudo easy_install pip
sudo pip install pygments

