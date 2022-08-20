#!/bin/bash

# install brew

sudo apt-get install build-essential
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install homebrew formulae

brew install git
brew install gh
brew install fish
brew install neovim
brew install tmux
brew install node
brew install vcprompt
brew install fortune
brew install cowsay
brew install ffmpeg
brew install imagemagick

# end of the file

echo "Linux"