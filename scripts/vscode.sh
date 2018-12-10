#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

# Copy VS Code user settings
printf "${BLUE}Copying VS Code user settings...${NORMAL}\n\n"
eval "cp ./vscode/settings.json ~/Library/Application\ Support/Code/User"

# # Copy VS Code keybindings
printf "${BLUE}Copying VS Code keybindings...${NORMAL}\n"
eval "cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User"

# # Install vscode extensions from the list in extensions.txt
printf "${BLUE}Installing VS Code extensions...${NORMAL}\n"

if test $(which code); then
  filename="./vscode/extensions.txt"
  while read -r line;
  do
    printf "${YELLOW}Installing VS Code extension %s...${NORMAL}\n" "$line"
    eval "code --install-extension $line > /dev/null"
  done < "$filename"
fi
