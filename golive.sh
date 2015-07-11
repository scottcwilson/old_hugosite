#!/bin/bash
# Modeled after http://takagi.github.io/2015/03/02/how-to-set-up/
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project. 
hugo --theme=liquorice

# Go To Public folder
cd public

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date +\"%Y-%m-%dT%H:%M:%S %Z\"`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ..