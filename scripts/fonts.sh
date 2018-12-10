#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

# Install fonts
printf "${GREEN}Installing fonts...${NORMAL}\n\n"
eval "cp ./fonts/**/*.{otf,ttf} ~/Library/Fonts/"
