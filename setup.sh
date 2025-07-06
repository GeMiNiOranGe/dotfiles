#!/bin/bash

config_file="$PWD/.gitconfig"

if command -v cygpath >/dev/null 2>&1; then
    config_file=$(cygpath --windows "$config_file")
fi

if git config --global --get-all include.path | grep -Fxq "$config_file"; then
    echo "$config_file is already included in the global Git config."
else
    git config --global --add include.path "$config_file"
    echo "Included $config_file into global Git config."
fi
