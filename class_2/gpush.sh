#!/bin/bash

if [ -d ".git" ]; then
    git status
    git add $1
    git commit -m "$2"
    git push
else
    echo "You arent in a repo"
    read -p "Enter your repo name: " repo
    repo_p=$(find ~/ -name scripts -type d | tail -n 1)
    if [ $repo_p != -z ]; then 
        cd $repo_p
        ls -la
        git status
        git add $1
        git commit -m "$2"
        git push
    else
        echo "Repo $repo does not exist"
    fi
fi