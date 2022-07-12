#!/bin/bash

for branch in $(git for-each-ref --format='%(refname:short)' refs/heads/ | grep "$1") ; do
    read -p "Do you want to delete: $branch? (y/n): " answer
    if [ "$answer" = "y" ]
    then
        git branch -D "$branch"
        echo
    else
        echo "skipping"
    fi
done