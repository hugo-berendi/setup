#!/bin/bash

# install xcode command line tools

xcode-select --install

# install brew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install homebrew formulae

curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/macos/formulae.txt
xargs brew install < formulae.txt

# install homebrew casks

curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/macos/casks.txt
xargs brew install < casks.txt


# configure git

echo ""
echo "############################################################################################################"
echo ""
echo "Configuring git"
echo "Git username:"
read git_username
echo ""
echo "Git email:"
read git_email

git config --global user.name $git_username

git config --global user.email $git_email

git config --global core.editor neovim

# install node version manager

curl --silent -o- https://raw.githubusercontent.com/nvm-sh/nvm/HEAD/install.sh | bash

nvm install 18

# global npm installs

nvm use 18
npm install -g lite-server gitignore license yarn ts-node typescript

# create dev folder

mkdir ~/development