#!/bin/bash
#set -e

echo
tput setaf 3
echo "################################################################"
echo "################### Start"
echo "################################################################"
tput sgr0
echo

project=$(basename `pwd`)
username="Raindeer-OS"
echo "-----------------------------------------------------------------------------"
echo "This is the project: https://github.com/$username/$project"
echo "-----------------------------------------------------------------------------"

git config --global pull.rebase false
git config --global push.default simple
git config --global user.name "Raindeer-OS"
git config --global user.email "officialraindeeros@gmail.com"
git config --system core.editor nano

if git remote set-url origin git@github.com:$username/$project; then
  echo "Git remote URL set to git@github.com:$username/$project"
else
  echo "Error: Could not set Git remote URL"
fi

echo
tput setaf 3
echo "################################################################"
echo "################### End"
echo "################################################################"
tput sgr0
echo
