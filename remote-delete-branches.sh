#!/bin/bash

for branch in $(git ls-remote --heads | grep "$1") ; do
    if [[ $branch == ref* ]]
    then
        read -p "Do you want to delete: $branch? (y/n): " answer
        if [ "$answer" = "y" ]
        then
            git push origin --delete "$branch"
            echo
        else
            echo "skipping"
        fi
    # else   
        # echo $branch
    fi
done