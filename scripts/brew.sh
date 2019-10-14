#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

# Install Homebrew (if not already installed)
if test ! $(which brew); then
  printf "${YELLOW}Installing Homebrew...${NORMAL}\n"
  eval "/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'"
fi

# Updating brew (if out of date)
printf "\n${YELLOW}Updating homebrew...${NORMAL}\n"
eval "brew update"

printf "\n${GREEN}Homebrew installed and up to date!${NORMAL}\n"

# Installing packages from brew
printf "\n${YELLOW}Installing packages...${NORMAL}\n"
PACKAGES=(
	wget
  zsh
  zsh-completions
  zsh-syntax-highlighting
  z
	composer
	mas
  heroku/brew/heroku
  hub
)
eval "brew install ${PACKAGES[@]}"
eval "brew install yarn --without-node"

printf "\n${GREEN}Homebrew packages installed!${NORMAL}\n"

# Install Homebrew Cask
printf "\n${YELLOW}Installing Homebrew Cask...${NORMAL}\n"
eval "brew tap caskroom/cask"

# Installing VS Code
printf "\n${YELLOW}Installing VS Code...${NORMAL}\n"
eval "brew cask install visual-studio-code"

# Clean it up
printf "\n${YELLOW}Cleaning up homebrew things...${NORMAL}\n"
eval "brew cleanup"
