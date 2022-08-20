#!/bin/bash

# find the os and install the installer

case "$OSTYPE" in
        solaris*) curl -O https://raw.githubusercontent.com/hugo-berendi/setup/main/linux.sh | bash linux.sh ;;
        darwin*)  curl -O https://raw.githubusercontent.com/hugo-berendi/setup/main/macos/macos.sh | bash macos.sh ;; 
        linux*)   curl -O https://raw.githubusercontent.com/hugo-berendi/setup/main/linux.sh | bash linux.sh ;;
        bsd*)     curl -O https://raw.githubusercontent.com/hugo-berendi/setup/main/linux.sh | bash linux.sh ;;
        msys*)    curl -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows.sh | bash windows.sh ;;
        cygwin*)  curl -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows.sh | bash windows.sh ;;
        *)        echo "unknown: $OSTYPE" ;;
esac

# end of the file

echo ""
echo "############################################################################################################"
echo ""
echo "Done"