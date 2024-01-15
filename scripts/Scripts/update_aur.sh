#!/bin/bash

changed_folders=()

cd ~/AUR || exit

for dir in */; do
    if [[ -d "$dir" && -d "$dir/.git" ]]; then
        echo "Updating $dir"
        cd "$dir" || continue
        if git pull | grep -q -v 'Already up to date'; then
            changed_folders+=("$dir")
        fi
        cd ..
    fi
done

if [ ${#changed_folders[@]} -eq 0 ]; then
    echo "No changes in AUR packages."
else
    echo "Packages with changes:"
    for dir in "${changed_folders[@]}"; do
        echo "$dir"
    done
fi
