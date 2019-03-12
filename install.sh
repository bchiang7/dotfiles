#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "\n${WHITE}==============================================================================

SETTING UP YOUR COMPUTER!

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
eval "sh scripts/brew.sh"

# Install Oh My Zsh
printf "\n${BLUE}Installing Oh My Zsh...${NORMAL}\n"
eval "sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'"

# Copy ZSH config
printf "${YELLOW}Copying ZSH config into ~/.zshrc...${NORMAL}\n"
eval "cp ./zshrc ~/.zshrc"

# Install fonts
eval "sh scripts/fonts.sh"

# Set up VS Code Settings and Extensions
eval "sh scripts/vscode.sh"

# Add global NPM packages
printf "\n${GREEN}Installing global npm packages for Spaceship ZSH Prompt, Trash CLI, Gulp CLI, Docker CLI, Gatsby CLI, Vue CLI...${NORMAL}\n"
eval "npm install -g spaceship-prompt trash-cli gulp-cli docker-cli gatsby-cli @vue/cli vsce yo"

# Refresh ZSH config
eval "source ~/.zshrc"

# Open links for apps that can't be downloaded via brew cask
printf "\n${BLUE}Opening links for apps to download...${NORMAL}\n"

# Browsers
eval "open https://www.google.com/chrome/"
eval "open https://www.google.com/chrome/canary/"
eval "open https://www.mozilla.org/en-US/firefox/new/"
eval "open https://www.mozilla.org/en-US/firefox/developer/"

# Productivity
eval "open https://www.google.com/drive/download/"
eval "open https://www.spectacleapp.com/"
eval "open https://clipy-app.com/"
eval "open https://www.alfredapp.com/"
eval "open https://1password.com/downloads/mac/"
eval "open https://itunes.apple.com/us/app/todoist-organize-your-life/id585829637?mt=12&ign-mpt=uo%3D4"
eval "open https://itunes.apple.com/us/app/next-meeting/id1017470484?mt=12"
eval "open https://github.com/andrepolischuk/keep"

# Development
eval "open https://code.visualstudio.com/"
eval "open https://www.sublimetext.com/"
eval "open https://atom.io/"
eval "open https://www.iterm2.com/"
eval "open https://hyper.is/"
eval "open https://www.getpostman.com/"
eval "open https://docs.docker.com/docker-for-mac/install/"
eval "open https://developer.apple.com/xcode/"

# Design
eval "open https://www.sketchapp.com/"
eval "open https://imageoptim.com/mac"

# Communication
eval "open https://slack.com/downloads/osx"
eval "open https://sparkmailapp.com/"
eval "open https://github.com/chrisknepper/android-messages-desktop"
eval "open https://fbmacmessenger.rsms.me/"

# Miscellaneous
eval "open http://matthewpalmer.net/rocket/"
eval "open https://matthewpalmer.net/vanilla/"
eval "open https://tiivik.github.io/"
eval "open https://www.spotify.com/us/download/mac/"
eval "open http://www.videolan.org/"


# Follow the instructions on GitHub to generate a new SSH key and add it to your Github account.
printf "\n${WHITE}==============================================================================

${GREEN}All set!

${WHITE}Make sure to follow the instructions on GitHub to generate a new SSH key and then add the key to your GitHub account.

==============================================================================${NORMAL}\n"

eval "open https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key"
eval "open https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account"
