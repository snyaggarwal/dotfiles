#! /bin/bash

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# basic utils
brew install wget
brew install git
brew install tig
brew install hub
brew install emacs-plus --HEAD --with-natural-title-bars
brew install node
brew install s3cmd
brew install htop
brew install watch
brew install python3
brew install ack
