#!/bin/bash

# Check if the required argument is provided
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <commit_message>"
    exit 1
fi

# Assign the command line argument to a variable
commit_message=$1

# Add all changes to the staging area
git add .

# Commit the changes with the provided commit message
git commit -m "$commit_message"

# Push the changes to the remote repository's main branch
git push origin main

# Print a success message
echo "Code committed and pushed successfully to origin/main"
