#!/bin/bash
# Modeled after http://takagi.github.io/2015/03/02/how-to-set-up/

# Additional step - check public folder, dummy! 
if [ ! -f public/.git/config ]
then 
    echo "Public folder is not a git repo"
    echo "Should point to https://github.com/scottcwilson/scottcwilson.github.io.git"
    echo "Remove public, then do:"
    echo "git clone https://github.com/scottcwilson/scottcwilson.github.io.git"
    echo "mv scottcwilson.github.io public "
    exit 
fi

# Additional step - check in actual code.
git add -A
# Commit changes.
msg="Site updates"
git commit -m "$msg"
git push origin master

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project. 
hugo 

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
