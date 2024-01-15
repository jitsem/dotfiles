#!/bin/bash
# Loop through each subdirectory (excluding .git)
for dir in */; do
    if [ "$dir" != ".git/" ]; then
        stow "$dir"
    fi
done
