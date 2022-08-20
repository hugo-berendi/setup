#!/bin/bash

# find the os and install the installer

case "$OSTYPE" in
        solaris*) curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/linux.sh && bash linux.sh ;;
        darwin*)  curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/macos/macos.sh && bash macos.sh ;; 
        linux*)   curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/linux.sh && bash linux.sh ;;
        bsd*)     curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/linux.sh && bash linux.sh ;;
        msys*)    curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows/how.sh && bash how.sh ;;
        cygwin*)  curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows/how.sh && bash how.sh ;;
        *)        echo "unknown: $OSTYPE" ;;
esac

# end of the file

echo ""
echo "##############################################################################"
echo ""
echo "Done"