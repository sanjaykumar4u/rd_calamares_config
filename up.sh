#!/bin/bash

set -e

echo "Checking for newer files online first"
git pull

# Backup everything inside the project folder
git add --all .

# Prompt for commit message
echo "Enter your commit message:"
read input

# Commit to local repository with message containing time details and commit text
timestamp=$(date +"%Y-%m-%d %H:%M:%S")
commit_msg="$timestamp: $input"
git commit -m "$commit_msg"

# Prompt for branch name
echo "Enter the branch name:"
read branch_name

# Push local files to Github
if grep -q "$branch_name" .git/config; then
	echo "Pushing changes to $branch_name branch"
	git push -u origin "$branch_name"
else
	echo "ERROR: Branch $branch_name not found in remote repository"
	exit 1
fi

echo "Git push complete"
