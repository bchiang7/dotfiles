#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "\n${WHITE}==============================================================================

COMPUTER, DO THE THING

==============================================================================${NORMAL}\n"

# Install XCode Command Line Tools
printf "\n${BLUE}Installing XCode Command Line Tools...${NORMAL}\n"
eval "xcode-select --install"

# Fix macOS Mojave antialiased fonts
printf "\n${MAGENTA}Fixing Mojave fonts to look normal again...${NORMAL}\n"
eval "defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO"

# Show hidden dotfiles in finder
printf "\n${MAGENTA}Showing hidden files to be visible finder...${NORMAL}\n"
eval "defaults write com.apple.finder AppleShowAllFiles YES"
eval "killall Finder"

# Install NVM
printf "\n${GREEN}Installing NVM...${NORMAL}\n"
eval "curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash"
eval "nvm install node --lts"
eval "nvm alias default node"

# Install Homebrew and its packages
eval "sh install/brew.sh"

# Install Oh My Zsh
printf "\n${BLUE}Installing Oh My Zsh...${NORMAL}\n"
eval "sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'"

# Copy ZSH config
printf "${YELLOW}Copying ZSH config into ~/.zshrc...${NORMAL}\n"
eval "cp .zshrc ~/.zshrc"

# Set up VS Code Settings and Extensions
eval "sh install/vscode.sh"

# Add global NPM packages
printf "\n${GREEN}Installing global npm packages for Spaceship ZSH Prompt, Trash CLI, Gulp CLI, Docker CLI, Gatsby CLI, Vue CLI...${NORMAL}\n"
eval "npm install -g spaceship-prompt trash-cli gulp-cli docker-cli gatsby-cli @vue/cli vsce yo"

# Refresh ZSH config
eval "source ~/.zshrc"

# Install fonts
printf "\n${MAGENTA}Installing fonts..."
eval "sh install/fonts.sh"

# Open links for apps that can't be downloaded via brew cask
printf "\n${BLUE}Opening links for apps that can't be installed with cask...${NORMAL}\n"
eval "open https://www.mozilla.org/en-US/firefox/developer/"
eval "open https://github.com/chrisknepper/android-messages-desktop"
eval "open https://github.com/andrepolischuk/keep"
eval "open https://fbmacmessenger.rsms.me/"
eval "open https://developer.apple.com/xcode/"
eval "open https://itunes.apple.com/us/app/todoist-organize-your-life/id585829637?mt=12&ign-mpt=uo%3D4"
eval "open https://itunes.apple.com/us/app/next-meeting/id1017470484?mt=12"

# Follow the instructions on GitHub to generate a new SSH key and add it to your Github account.
printf "\n${WHITE}==============================================================================

${GREEN}All set!

${WHITE}Make sure to follow the instructions in the links below to generate a new SSH key and then add the key to your GitHub account.

${YELLOW}https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key

${YELLOW}https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account

${WHITE}Opening links...

==============================================================================${NORMAL}\n"

eval "open https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key"
eval "open https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account"
