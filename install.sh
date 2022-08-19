#!/bin/bash

case "$OSTYPE" in
        solaris*) echo "SOLARIS" ;;
        darwin*)  echo "OSX" ;; 
        linux*)   echo "LINUX" ;;
        bsd*)     echo "BSD" ;;
        msys*)    curl -O https://raw.githubusercontent.com/hugo-berendi/dotfiles/main/install-dotfiles.sh && bash install-dotfiles.sh ;;
        cygwin*)  echo "ALSO WINDOWS" ;;
        *)        echo "unknown: $OSTYPE" ;;
esac

echo "end of the file"