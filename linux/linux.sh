#!/bin/bash

# install brew

sudo apt-get install build-essential procps curl file git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install homebrew formulae

curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/linux/formulae.txt
xargs brew install < formulae.txt

# end of the file

echo "Linux"