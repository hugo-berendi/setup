#!/bin/bash

# install brew

sudo apt-get install build-essential
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.bash_profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

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
brew install exa
brew install youtube-dl
brew install ghq
brew install peco

# set fish as default shell

$fish_path = $(which fish)

sudo echo $fish_path >> /etc/shells
chsh -s $fish_path

# install fisher and set it up

curl -sL -O https://git.io/fisher | source fisher.fish && fisher install jorgebucaran/fisher
fisher install jethrokuan/z

# install nerd font

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Hack Regular Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf
cd ~

# setting up dotfiles

cd ~/.config/
rm -r fish
svn checkout https://github.com/hugo-berendi/dotfiles/trunk/config/fish
svn checkout https://github.com/hugo-berendi/dotfiles/trunk/config/nvim
svn checkout https://github.com/hugo-berendi/dotfiles/trunk/config/tmux
cd ~

# end of the file

echo ""
echo ""
echo ""

echo "Please set 'Hack Regular Nerd Font Complete Mono' as your terminal font."
echo ""
echo "Please use the following command:"
echo "fisher install ilancosman/tide@v5"
echo ""